defmodule Exlings.CLI do
  @moduledoc """
  Exlings - Interactive Elixir learning exercises.

  Learn Elixir through small, incremental exercises that teach language fundamentals.
  """

  use Nexus.CLI, otp_app: :exlings

  alias Exlings.CLI.UI
  alias Exlings.Exercises
  alias Exlings.Exercises.Exercise

  defcommand :list do
    description("Print all available exercises")
  end

  defcommand :verify do
    description("Verifies all available exercises")
  end

  defcommand :watch do
    description("Watch for changes in any exercise and run automatically")
  end

  defcommand :hint do
    description("Shows a hint for the specified exercise")
    value(:string, as: :exercise_name, required: true)
  end

  defcommand :run do
    description("Run a specific exercise or the next pending one")
    value(:string, as: :exercise_name, default: "next")
  end

  @impl true
  def handle_input(:list, _input) do
    UI.table(Exercises.list(), fn e ->
      state = inspect(Exercise.get_state(e))
      %{"name" => e.name, "path" => e.path, "state" => state}
    end)
  end

  def handle_input(:verify, _input) do
    Enum.each(Exercises.list(), fn e ->
      case Exercises.run(e) do
        {:stdout, out} ->
          success(e, out)

        {:stderr, out} ->
          error(e, out)
          System.halt(1)
      end
    end)

    UI.write(:green, "Congratulations!!!")
    UI.write(:green, "You passed all the exercises")
  end

  def handle_input(:watch, _input) do
    {:ok, _} = Exlings.FileWatcher.start_link(callback: &run_watched_exercise/1)
    wait()
  end

  def handle_input(:hint, %{value: exercise_name}) do
    if e = Exercises.find_by(name: exercise_name) do
      UI.write(:yellow, e.hint)
    else
      UI.write("Exercise #{exercise_name} not found!")
    end
  end

  def handle_input(:run, %{value: "next"}) do
    if e = Exercises.next_pending() do
      handle_exercise_result(e)
    else
      UI.write("There's no pending exercise")
    end
  end

  def handle_input(:run, %{value: exercise_name}) do
    if e = Exercises.find_by(name: exercise_name) do
      handle_exercise_result(e)
    else
      UI.write("Exercise #{exercise_name} not found!")
    end
  end

  @spec run_watched_exercise(Path.t()) :: :ok
  defp run_watched_exercise(path) do
    if e = Exercises.find_by(path: path) do
      handle_exercise_result(e)
    else
      UI.write("Exercise with path #{path} not found!")
    end
  end

  defp wait do
    i = IO.read(:line)

    cond do
      String.match?(i, ~r"quit") ->
        UI.write(:green, "Bye by exlings o/")
        System.halt(0)

      String.match?(i, ~r"exit") ->
        UI.write(:green, "Bye by exlings o/")
        System.halt(0)

      true ->
        wait()
    end
  end

  defp handle_exercise_result(%Exercise{} = e) do
    case Exercises.run(e) do
      {:stdout, out} -> success(e, out)
      {:stderr, out} -> error(e, out)
    end
  end

  defp error(%Exercise{} = e, out) do
    UI.write(:cyan, "Failed to compile the exercise #{e.name}")
    UI.write("Check the output below:")
    UI.write(:red, out)
    UI.write(:yellow, "If you feel stuck, as a hint by executing exlings hint #{e.name}")
  end

  defp success(%Exercise{} = e, out) do
    UI.write(:green, "✅ Successfully tested #{e.path}!")
    UI.write(:green, "Congratulations 🎉!!")
    UI.write(:green, "Here's the output of your program:")
    UI.write(:cyan, out)
  end
end
