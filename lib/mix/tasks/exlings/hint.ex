defmodule Mix.Tasks.Exlings.Hint do
  use Mix.Task

  @shortdoc "Show the hint for an exercise"

  @moduledoc """
  Show the hint for an exercise. Defaults to the next pending one.

  ## Usage

      mix exlings.hint      # Hint for the next pending exercise
      mix exlings.hint 5    # Hint for exercise 5
  """

  alias Exlings.{Exercises, UI}

  def run([]) do
    case Exlings.next_exercise_after() do
      nil -> UI.all_complete()
      exercise -> UI.show_hint(exercise)
    end
  end

  def run([number_str]) do
    with {n, ""} <- Integer.parse(number_str),
         exercise when not is_nil(exercise) <- Exercises.get(n) do
      UI.show_hint(exercise)
    else
      _ ->
        IO.puts("Error: Invalid exercise number: #{number_str}")
        System.halt(1)
    end
  end

  def run(_) do
    IO.puts("Usage: mix exlings.hint [number]")
    System.halt(1)
  end
end
