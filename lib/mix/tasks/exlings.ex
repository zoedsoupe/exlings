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
      mix exlings.lang     # Change the language
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

  alias Exlings.{Exercises, I18n, Progress, UI}

  def run([]) do
    ensure_language()
    UI.show_header()

    done = Progress.completed()
    count = Exercises.count()
    how_much = MapSet.size(done)

    if how_much == count do
      UI.all_complete()
      System.halt(0)
    else
      run_next(how_much)
    end
  end

  def run([number_str]) do
    ensure_language()

    case Integer.parse(number_str) do
      {n, ""} ->
        run_specific(n)

      _ ->
        IO.puts(t(:invalid_number, input: number_str))
        System.halt(1)
    end
  end

  def run(_) do
    IO.puts(t(:too_many_args))
    IO.puts(t(:usage_exlings))
    System.halt(1)
  end

  # First run only: ask once, store as a "lang:" line in .progress.
  # Non-interactive shells (CI) get :eof and keep the English default.
  defp ensure_language do
    if is_nil(Progress.language()) do
      "\nChoose your language / Escolha seu idioma:\n  1. English\n  2. Português (Brasil)\n> "
      |> IO.gets()
      |> maybe_set_language()
    end
  end

  defp maybe_set_language(:eof), do: :ok
  defp maybe_set_language({:error, _}), do: :ok

  defp maybe_set_language(choice) do
    lang = if String.trim(choice) == "2", do: "pt-BR", else: "en"
    Progress.set_language(lang)
  end

  defp t(key, bindings \\ []), do: I18n.t(Exlings.locale(), key, bindings)

  defp run_next(done_until) do
    if exercise = Exlings.next_exercise_after(done_until) do
      case Exlings.attempt(exercise) do
        :failed -> System.halt(1)
        _ -> System.halt(0)
      end
    else
      IO.puts(t(:no_exercise, number: done_until))
      System.halt(1)
    end
  end

  defp run_specific(n) do
    if exercise = Exercises.get(n) do
      case Exlings.attempt(exercise) do
        :failed -> System.halt(1)
        _ -> System.halt(0)
      end
    else
      IO.puts(t(:no_exercise, number: n))
      System.halt(1)
    end
  end
end
