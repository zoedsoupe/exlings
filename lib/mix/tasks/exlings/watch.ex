defmodule Mix.Tasks.Exlings.Watch do
  use Mix.Task

  @shortdoc "Re-run exercises on file change"

  @moduledoc """
  Watch the current exercise file and re-run it on every save.
  On success it advances to the next pending exercise.

  ## Usage

      mix exlings.watch      # Watch the next pending exercise
      mix exlings.watch 5    # Watch exercise 5

  Stop with Ctrl+C.
  """

  alias Exlings.{Exercises, UI}

  # ponytail: mtime polling instead of a filesystem-events dep. 300ms is
  # plenty for a save-to-feedback loop.
  @poll_interval 300

  def run(args) do
    exercise =
      case args do
        [] ->
          Exlings.next_exercise_after()

        [number_str] ->
          with {n, ""} <- Integer.parse(number_str) do
            Exercises.get(n)
          end
      end

    case exercise do
      nil ->
        IO.puts("Error: Invalid or completed exercise")
        System.halt(1)

      exercise ->
        UI.show_header()
        loop(exercise)
    end
  end

  defp loop(exercise) do
    IO.puts("Watching exercises/#{exercise.file} - edit and save to re-run. Ctrl+C to quit.")

    last = mtime(exercise)
    result = Exlings.attempt(exercise)
    wait_for_change(exercise, last)

    case result do
      :failed ->
        loop(exercise)

      _ ->
        case Exlings.next_exercise_after(exercise.number) do
          nil -> UI.all_complete()
          next -> loop(next)
        end
    end
  end

  defp wait_for_change(exercise, last) do
    Process.sleep(@poll_interval)

    if mtime(exercise) == last do
      wait_for_change(exercise, last)
    end
  end

  defp mtime(exercise) do
    case File.stat(Path.join("exercises", exercise.file)) do
      {:ok, %{mtime: mtime}} -> mtime
      {:error, _} -> nil
    end
  end
end
