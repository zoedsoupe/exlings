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

  @doc "Show wrong output error"
  def wrong_output(%Exercise{} = ex, expected, actual) do
    IO.puts("""

    #{red()}Output doesn't match!#{reset()}

    Expected:
    #{expected}

    But got:
    #{actual}
    #{show_hint(ex)}
    #{show_help_message(ex)}
    """)
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

  defp show_hint(%Exercise{hint: nil}), do: :ok

  defp show_hint(%Exercise{hint: hint}) do
    IO.puts("\n#{cyan()}Hint:#{reset()} #{hint}")
  end

  defp show_help_message(%Exercise{} = ex) do
    IO.puts("\nEdit exercises/#{ex.file} and run 'mix exlings' again.\n")
  end

  defp red, do: IO.ANSI.red()
  defp green, do: IO.ANSI.green()
  defp cyan, do: IO.ANSI.cyan()
  # Elixir purple
  defp purple, do: "\e[35m"
  defp reset, do: IO.ANSI.reset()
end
