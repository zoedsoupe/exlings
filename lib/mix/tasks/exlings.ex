defmodule Mix.Tasks.Exlings do
  use Mix.Task

  @shortdoc "Run Exlings exercises"

  @moduledoc """
  Run Exlings exercises.

  ## Usage

      mix exlings          # Continue from last completed exercise
      mix exlings 5        # Run specific exercise number

  ## Options

  No options currently supported.
  """

  alias Exlings.{Exercises, Progress, Runner, UI}

  def run([]) do
    UI.show_header()
    last = Progress.read()
    next_exercise = Exercises.get(last + 1)
    run_exercise(next_exercise)
  end

  def run([number_str]) do
    case Integer.parse(number_str) do
      {n, ""} ->
        exercise = Exercises.get(n)
        run_exercise(exercise)

      _ ->
        IO.puts("Error: Invalid exercise number: #{number_str}")
        System.halt(1)
    end
  end

  def run(_) do
    IO.puts("Error: Too many arguments")
    IO.puts("Usage: mix exlings [number]")
    System.halt(1)
  end

  defp run_exercise(nil) do
    UI.all_complete()
    System.halt(0)
  end

  defp run_exercise(exercise) do
    UI.exercise_header(exercise)

    case Runner.run(exercise) do
      {:skip, reason} ->
        UI.skip(exercise, reason)
        # Continue to next
        next = Exercises.get(exercise.number + 1)
        run_exercise(next)

      {:ok, output} ->
        UI.success(exercise, output)
        Progress.write(exercise.number)

        # Continue to next exercise
        next = Exercises.get(exercise.number + 1)
        run_exercise(next)

      {:error, {:compile_error, error}} ->
        UI.compile_error(exercise, error)
        System.halt(1)

      {:error, {:runtime_error, error}} ->
        UI.runtime_error(exercise, error)
        System.halt(1)

      {:error, {:wrong_output, expected, actual}} ->
        UI.wrong_output(exercise, expected, actual)
        System.halt(1)
    end
  end
end
