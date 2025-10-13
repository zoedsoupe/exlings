defmodule Mix.Tasks.Exlings.List do
  use Mix.Task

  @shortdoc "List all exercises"

  @moduledoc """
  List all Exlings exercises with their completion status.

  ## Usage

      mix exlings.list

  """

  alias Exlings.Exercises
  alias Exlings.Progress

  def run(_args) do
    completed = Progress.read()
    total = Exercises.count()

    IO.puts("\nExlings Exercises:\n")

    Exercises.all()
    |> Enum.group_by(& &1.topic)
    |> Enum.each(&print_exercises(&1, completed))

    percentage = div(completed * 100, total)
    IO.puts("Progress: #{completed}/#{total} (#{percentage}%)\n")
  end

  defp print_exercises({topic, exercises}, completed) do
    IO.puts("#{String.upcase(topic)}:")

    Enum.each(exercises, fn ex ->
      status = if ex.number <= completed, do: "[x]", else: "[ ]"
      IO.puts("  #{status} #{ex.number}. #{ex.name}")
    end)

    IO.puts("")
  end
end
