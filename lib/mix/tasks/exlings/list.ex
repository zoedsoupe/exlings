defmodule Mix.Tasks.Exlings.List do
  use Mix.Task

  @shortdoc "List all exercises"

  @moduledoc """
  List all Exlings exercises with their completion status.

  ## Usage

      mix exlings.list

  """

  alias Exlings.{Exercises, I18n, Progress}

  def run(_args) do
    done = Progress.completed()
    total = Exercises.count()

    IO.puts("\n#{t(:list_header)}\n")

    Exercises.all()
    |> Enum.group_by(& &1.topic)
    |> Enum.sort_by(fn {topic, _} -> topic end)
    |> Enum.each(&print_exercises(&1, done))

    completed_count = Enum.count(Exercises.all(), &(&1.number in done))
    percentage = div(completed_count * 100, total)

    IO.puts(
      "#{t(:list_progress, completed: completed_count, total: total, percentage: percentage)}\n"
    )
  end

  defp print_exercises({topic, exercises}, done) do
    IO.puts("#{String.upcase(t(topic_key(topic)))}:")

    Enum.each(exercises, fn ex ->
      status = if ex.number in done, do: "[x]", else: "[ ]"
      IO.puts("  #{status} #{ex.number}. #{Exercises.name(ex, Exlings.locale())}")
    end)

    IO.puts("")
  end

  defp topic_key(topic), do: String.to_atom("topic_" <> topic)

  defp t(key, bindings \\ []), do: I18n.t(Exlings.locale(), key, bindings)
end
