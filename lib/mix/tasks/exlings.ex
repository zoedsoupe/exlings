defmodule Mix.Tasks.Exlings do
  use Mix.Task

  @shortdoc "Run Exlings exercises"

  @moduledoc """
  Welcome to exlings! A series of small exercises designed to help you
  learn Elixir through practice, by fixing and completing them.

  Inspired by the brilliant rustlings and ziglings projects.

  ## Usage

      mix exlings          # Continue from last completed exercise
      mix exlings 5        # Run specific exercise number

  ## Working with exercises

  Exercises live in the `./exercises/` directory. Edit them as you want!

      mix exlings          # Run the next pending exercise
      mix exlings 1        # Run a specific exercise by number
      mix exlings.list     # List all exercises and see your progress
      mix exlings.reset    # Reset your progress and start from the beginning

  ## Learning resources

  Each exercise is self-contained and self-explained, but these complement
  the journey:

    * Elixir Getting Started Guide - https://hexdocs.pm/elixir/introduction.html
    * Elixir Documentation - https://hexdocs.pm/elixir
    * Elixir Language Reference - https://hexdocs.pm/elixir/syntax-reference.html
    * Exercism Elixir Track - https://exercism.org/tracks/elixir
    * Elixir School - https://elixirschool.com/en

  The Elixir community (https://elixirforum.com) is incredibly friendly
  and helpful!
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
