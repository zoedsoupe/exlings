defmodule Mix.Tasks.Exlings do
  use Mix.Task

  @shortdoc "Run Exlings exercises"

  @moduledoc """
  Welcome to exlings! A series of small exercises designed to help you
  learn Elixir through practice, by fixing and completing them.

  Inspired by the brilliant rustlings and ziglings projects.

  ## Usage

      mix exlings          # Continue with the next pending exercise
      mix exlings 5        # Run a specific exercise, then continue

  ## Working with exercises

  Exercises live in the `./exercises/` directory. Edit them as you want!

      mix exlings          # Run the next pending exercise
      mix exlings 1        # Run a specific exercise by number
      mix exlings.watch    # Re-run the current exercise on every save
      mix exlings.hint     # Show the hint for the current exercise
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

  alias Exlings.{Exercises, UI}

  def run([]) do
    UI.show_header()
    continue_after(0)
  end

  def run([number_str]) do
    case Integer.parse(number_str) do
      {n, ""} ->
        run_specific(n)

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

  defp run_specific(n) do
    case Exercises.get(n) do
      nil ->
        IO.puts("Error: No exercise #{n}")
        System.halt(1)

      exercise ->
        case Exlings.attempt(exercise) do
          :failed -> System.halt(1)
          _ -> continue_after(n)
        end
    end
  end

  defp continue_after(number) do
    case Exlings.next_exercise_after(number) do
      nil ->
        UI.all_complete()
        System.halt(0)

      exercise ->
        case Exlings.attempt(exercise) do
          :failed -> System.halt(1)
          _ -> continue_after(exercise.number)
        end
    end
  end
end
