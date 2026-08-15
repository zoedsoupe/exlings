defmodule Exlings.UI do
  @moduledoc """
  User interface - minimal colored output.
  Clean and simple output
  """

  alias Exlings.{Exercises, I18n}
  alias Exlings.Exercises.Exercise

  @doc "Show the header with Elixir purple"
  def show_header do
    IO.puts("""

    #{purple()}#{t(:header)}#{reset()}
    """)
  end

  @doc "Show exercise header"
  def exercise_header(%Exercise{} = ex) do
    total = Exercises.count()
    name = Exercises.name(ex, locale())

    IO.puts("""

    #{t(:exercise_header, number: ex.number, total: total, name: name)}
    """)
  end

  @doc "Show success message"
  def success(%Exercise{} = ex, output) do
    completed = ex.number
    total = Exercises.count()
    percentage = div(completed * 100, total)

    IO.puts("\n#{green()}#{t(:success, number: ex.number)}#{reset()}")

    if String.trim(output) != "" do
      IO.puts("\n#{t(:output_label)}")
      IO.puts(output)
    end

    IO.puts("\n#{t(:progress, completed: completed, total: total, percentage: percentage)}\n")
  end

  @doc "Show compilation error - print compiler output as-is"
  def compile_error(%Exercise{} = ex, error) do
    IO.puts("\n#{red()}#{t(:compilation_failed)}#{reset()}\n")
    show_placeholders(ex)
    IO.puts(error)
    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show runtime error - print error as-is"
  def runtime_error(%Exercise{} = ex, error) do
    IO.puts("\n#{red()}#{t(:runtime_error)}#{reset()}\n")
    IO.puts(error)
    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show failing tests - print ExUnit report as-is"
  def test_failed(%Exercise{} = ex, error) do
    IO.puts("\n#{red()}#{t(:tests_failed)}#{reset()}\n")
    IO.puts(error)
    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show timeout message"
  def timeout(%Exercise{} = ex, millis) do
    IO.puts("""

    #{red()}#{t(:timeout, seconds: div(millis, 1000))}#{reset()}
    """)

    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show wrong output error"
  def wrong_output(%Exercise{} = ex, expected, actual) do
    IO.puts("""

    #{red()}#{t(:output_mismatch)}#{reset()}

    #{t(:expected_label)}
    #{expected}

    #{t(:got_label)}
    #{actual}
    """)

    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show skip message"
  def skip(%Exercise{} = ex, reason) do
    name = Exercises.name(ex, locale())
    IO.puts("\n#{t(:skipping, number: ex.number, name: name)}")
    IO.puts(reason)
    IO.puts("")
  end

  @doc "Show all complete message"
  def all_complete do
    IO.puts("""

    #{green()}#{t(:all_complete)}#{reset()}
    """)
  end

  @doc """
  Reveal the next hint for an exercise.

  Hints are listed least revealing first. Each failure (or explicit
  'mix exlings.hint') reveals one more, so early hints ask questions
  and later ones get closer to the answer.
  """
  def show_hint(%Exercise{} = ex) do
    case Exercises.hints(ex, locale()) do
      hints when hints in [[], nil] ->
        :ok

      hints ->
        revealed = Exlings.Progress.hints_revealed(ex.number)
        index = min(revealed, length(hints) - 1)

        IO.puts(
          "\n#{cyan()}#{t(:hint_label, index: index + 1, total: length(hints))}#{reset()} #{Enum.at(hints, index)}"
        )

        if revealed < length(hints) - 1 do
          Exlings.Progress.reveal_hint(ex.number)
          IO.puts("#{cyan()}#{t(:stuck)}#{reset()}")
        end
    end
  end

  defp show_help_message(%Exercise{} = ex) do
    IO.puts("\n#{t(:edit_and_rerun, path: Exlings.exercise_path(ex))}\n")
  end

  # ??? SyntaxError output is cryptic for beginners. Listing the lines
  # that still hold a placeholder maps the error back to the task.
  # ponytail: strips text after # before matching, so instructions in
  # comments don't count. A # inside a string literal would fool it.
  defp show_placeholders(%Exercise{} = ex) do
    case File.read(Exlings.exercise_path(ex)) do
      {:ok, content} ->
        lines = fetch_placeholder_lines(content)

        case lines do
          [] ->
            :ok

          [one] ->
            IO.puts("#{t(:placeholder_one, line: one)}\n")

          many ->
            IO.puts("#{t(:placeholder_many, lines: Enum.join(many, ", "))}\n")
        end

      _ ->
        :ok
    end
  end

  defp fetch_placeholder_lines(content) do
    content
    |> String.split("\n")
    |> Enum.with_index(1)
    |> Enum.filter(fn {line, _} ->
      line |> String.split("#", parts: 2) |> hd() |> String.contains?("???")
    end)
    |> Enum.map(fn {_, n} -> n end)
  end

  defp t(key, bindings \\ []), do: I18n.t(locale(), key, bindings)

  defp locale, do: Exlings.locale()

  defp red, do: IO.ANSI.red()
  defp green, do: IO.ANSI.green()
  defp cyan, do: IO.ANSI.cyan()
  # Elixir purple
  defp purple, do: IO.ANSI.magenta()
  defp reset, do: IO.ANSI.reset()
end
