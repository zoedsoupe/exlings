defmodule Mix.Tasks.Exlings.List do
  use Mix.Task

  @shortdoc "List all exercises"

  @moduledoc """
  List all Exlings exercises with their completion status.

  ## Usage

      mix exlings.list

  """

  alias Exlings.{Exercises, Progress}

  def run(_args) do
    done = Progress.completed()
    total = Exercises.count()

    IO.puts("\nExlings Exercises:\n")

    Exercises.all()
    |> Enum.group_by(& &1.topic)
    |> Enum.sort_by(fn {topic, _} -> topic end)
    |> Enum.each(&print_exercises(&1, done))

    completed_count = Enum.count(Exercises.all(), &(&1.number in done))
    percentage = div(completed_count * 100, total)
    IO.puts("Progress: #{completed_count}/#{total} (#{percentage}%)\n")
  end

  defp print_exercises({topic, exercises}, done) do
    IO.puts("#{String.upcase(topic)}:")

    Enum.each(exercises, fn ex ->
      status = if ex.number in done, do: "[x]", else: "[ ]"
      IO.puts("  #{status} #{ex.number}. #{ex.name}")
    end)

    IO.puts("")
  end
end
