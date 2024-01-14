defmodule Exlings.CLI do
  @moduledoc """
  Main module to deifne the CLI command and how to run it
  """

  use Nexus

  alias Exlings.CLI.UI
  alias Exlings.Exercises
  alias Exlings.Exercises.Exercise

  @impl true
  def version, do: "0.1.0"

  Nexus.help()

  defcommand :list, type: :null, doc: "Print all available exercises"
  defcommand :verify, type: :null, doc: "Verifies all available exefcises"
  defcommand :watch, type: :null, doc: "Waits for a change int oany exercise"

  @hint_help "Shows a hint for the specified exercise"
  defcommand :hint, type: :string, required: true, doc: @hint_help

  @run_help "Try to run a specified exercise, if not given, the pending one is run"
  defcommand :run, type: :string, default: "next", doc: @run_help

  @impl true
  def handle_input(:list) do
    UI.table(Exercises.list(), fn e ->
      state = inspect(Exercise.get_state(e))
      %{"name" => e.name, "path" => e.path, "state" => state}
    end)
  end

  def handle_input(:verify) do
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

  def handle_input(:watch) do
    {:ok, _} = Exlings.FileWatcher.start_link(callback: &run_watched_exercise/1)
    wait()
  end

  @impl true
  def handle_input(:hint, %{value: exercise}) do
    if e = Exercises.find_by(name: exercise) do
      UI.write(:yellow, e.hint)
    else
      UI.write("Exercise #{exercise} not found!")
    end
  end

  def handle_input(:run, %{value: "next"}) do
    if e = Exercises.next_pending() do
      handle_exercise_result(e)
    else
      UI.write("There's no pending exercise")
    end
  end

  def handle_input(:run, %{value: exercise}) do
    if e = Exercises.find_by(name: exercise) do
      handle_exercise_result(e)
    else
      UI.write("Exercise #{exercise} not found!")
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

  Nexus.parse()
end
