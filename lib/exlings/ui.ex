defmodule Exlings.UI do
  @moduledoc """
  User interface - minimal colored output.
  Clean and simple output
  """

  alias Exlings.Exercises.Exercise

  @doc "Show the header with Elixir purple"
  def show_header do
    IO.puts("""

    #{purple()}Exlings - Learn Elixir by fixing broken code#{reset()}
    """)
  end

  @doc "Show exercise header"
  def exercise_header(%Exercise{} = ex) do
    total = Exlings.Exercises.count()

    IO.puts("""

    Exercise #{ex.number}/#{total}: #{ex.name}
    """)
  end

  @doc "Show success message"
  def success(%Exercise{} = ex, output) do
    completed = ex.number
    total = Exlings.Exercises.count()
    percentage = div(completed * 100, total)

    IO.puts("\n#{green()}Exercise #{ex.number} complete!#{reset()}")

    if String.trim(output) != "" do
      IO.puts("\nOutput:")
      IO.puts(output)
    end

    IO.puts("\nProgress: [#{completed}/#{total}] #{percentage}%\n")
  end

  @doc "Show compilation error - print compiler output as-is"
  def compile_error(%Exercise{} = ex, error) do
    IO.puts("\n#{red()}Compilation failed:#{reset()}\n")
    show_placeholders(ex)
    IO.puts(error)
    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show runtime error - print error as-is"
  def runtime_error(%Exercise{} = ex, error) do
    IO.puts("\n#{red()}Runtime error:#{reset()}\n")
    IO.puts(error)
    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show failing tests - print ExUnit report as-is"
  def test_failed(%Exercise{} = ex, error) do
    IO.puts("\n#{red()}Tests failed:#{reset()}\n")
    IO.puts(error)
    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show timeout message"
  def timeout(%Exercise{} = ex, millis) do
    IO.puts("""

    #{red()}Timed out after #{div(millis, 1000)}s.#{reset()}
    Check for infinite loops or recursion.
    """)

    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show wrong output error"
  def wrong_output(%Exercise{} = ex, expected, actual) do
    IO.puts("""

    #{red()}Output doesn't match!#{reset()}

    Expected:
    #{expected}

    But got:
    #{actual}
    """)

    show_hint(ex)
    show_help_message(ex)
  end

  @doc "Show skip message"
  def skip(%Exercise{} = ex, reason) do
    IO.puts("\nSkipping exercise #{ex.number}: #{ex.name}")
    IO.puts(reason)
    IO.puts("")
  end

  @doc "Show all complete message"
  def all_complete do
    IO.puts("""

    #{green()}Congratulations!#{reset()}
    You've completed all Exlings exercises!
    """)
  end

  @doc """
  Reveal the next hint for an exercise.

  Hints are listed least revealing first. Each failure (or explicit
  'mix exlings.hint') reveals one more, so early hints ask questions
  and later ones get closer to the answer.
  """
  def show_hint(%Exercise{hints: []}), do: :ok
  def show_hint(%Exercise{hints: nil}), do: :ok

  def show_hint(%Exercise{hints: hints} = ex) do
    revealed = Exlings.Progress.hints_revealed(ex.number)
    index = min(revealed, length(hints) - 1)

    IO.puts("\n#{cyan()}Hint #{index + 1}/#{length(hints)}:#{reset()} #{Enum.at(hints, index)}")

    if revealed < length(hints) - 1 do
      Exlings.Progress.reveal_hint(ex.number)
      IO.puts("#{cyan()}Stuck?#{reset()} Run 'mix exlings.hint' for another hint.")
    end
  end

  defp show_help_message(%Exercise{} = ex) do
    IO.puts("\nEdit exercises/#{ex.file} and run 'mix exlings' again.\n")
  end

  # ??? SyntaxError output is cryptic for beginners. Listing the lines
  # that still hold a placeholder maps the error back to the task.
  # ponytail: strips text after # before matching, so instructions in
  # comments don't count. A # inside a string literal would fool it.
  defp show_placeholders(%Exercise{} = ex) do
    with {:ok, content} <- File.read(Path.join("exercises", ex.file)) do
      lines =
        content
        |> String.split("\n")
        |> Enum.with_index(1)
        |> Enum.filter(fn {line, _} ->
          line |> String.split("#", parts: 2) |> hd() |> String.contains?("???")
        end)
        |> Enum.map(fn {_, n} -> n end)

      case lines do
        [] ->
          :ok

        [one] ->
          IO.puts("You still have a ??? placeholder to fill at line #{one}.\n")

        many ->
          IO.puts("You still have ??? placeholders to fill at lines #{Enum.join(many, ", ")}.\n")
      end
    else
      _ -> :ok
    end
  end

  defp red, do: IO.ANSI.red()
  defp green, do: IO.ANSI.green()
  defp cyan, do: IO.ANSI.cyan()
  # Elixir purple
  defp purple, do: IO.ANSI.magenta()
  defp reset, do: IO.ANSI.reset()
end
