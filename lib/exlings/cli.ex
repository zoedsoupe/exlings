defmodule Exlings.CLI do
  @moduledoc """
  Main module to deifne the CLI command and how to run it
  """

  use Nexus

  alias Exlings.CLI.Color
  alias Exlings.Exercises
  alias Exlings.Exercises.Exercise

  @impl true
  def version, do: "0.1.0"

  Nexus.help()

  @run_help "Try to run a specified exercise, if not given, the pending one is run"
  defcommand(:run, type: :string, default: "next", doc: @run_help)

  @impl true
  def handle_input(:run, %{value: "next"}) do
    if e = Exercises.next_pending() do
      handle_exercise_result(e)
    else
      Color.write("There's no pending exercise")
    end
  end

  def handle_input(:run, %{value: exercise}) do
    if e = Exercises.find_by(name: exercise) do
      handle_exercise_result(e)
    else
      IO.puts("Exercise #{exercise} not found!")
    end
  end

  defp handle_exercise_result(%Exercise{} = e) do
    case Exercises.run(e) do
      {:stdout, out} -> success(e, out)
      {:stderr, out} -> error(e, out)
    end
  end

  defp error(%Exercise{} = e, out) do
    Color.write(:cyan, "Failed to compile the exercise #{e.name}")
    Color.write("Check the output below:")
    Color.write(:red, out)
    Color.write(:yellow, "If you feel stuck, as a hint by executing exlings hint #{e.name}")
  end

  defp success(%Exercise{} = e, out) do
    Color.write(:green, "✅ Successfully tested #{e.path}!")
    Color.write(:green, "Congratulations 🎉!!")
    Color.write(:green, "Here's the output of your program:")
    Color.write(:cyan, out)
  end

  Nexus.parse()
end
