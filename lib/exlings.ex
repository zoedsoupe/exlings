defmodule Exlings do
  @moduledoc false

  alias Exlings.{Exercises, I18n, Progress, Runner, UI}
  alias Exlings.Exercises.Exercise

  @doc """
  Run one exercise, print the result and record progress on success.

  Returns `:done`, `:skip` or `:failed`.
  """
  def attempt(exercise) do
    UI.exercise_header(exercise)

    case Runner.run(exercise) do
      {:skip, reason} ->
        UI.skip(exercise, reason)
        :skip

      {:ok, output} ->
        UI.success(exercise, output)
        Progress.complete(exercise.number)
        :done

      {:error, {:compile_error, error}} ->
        UI.compile_error(exercise, error)
        :failed

      {:error, {:runtime_error, error}} ->
        UI.runtime_error(exercise, error)
        :failed

      {:error, {:test_failed, error}} ->
        UI.test_failed(exercise, error)
        :failed

      {:error, {:timeout, millis}} ->
        UI.timeout(exercise, millis)
        :failed

      {:error, {:wrong_output, expected, actual}} ->
        UI.wrong_output(exercise, expected, actual)
        :failed
    end
  end

  @doc """
  First pending exercise with a number greater than `min` (default 0),
  or nil when everything is done.
  """
  def next_exercise_after(min \\ 0) do
    done = Progress.completed()
    Enum.find(Exercises.all(), &(&1.number > min and &1.number not in done))
  end

  @doc "The user's chosen locale. Defaults to English when never asked."
  def locale do
    case Progress.language() do
      nil -> :en
      lang -> I18n.parse_locale(lang)
    end
  end

  @doc """
  Path to the exercise file for the current locale.

  Localized files live in exercises/<locale-dir>/. When the localized
  file is missing (translation lags behind), falls back to the canonical
  English file at exercises/.
  """
  def exercise_path(%Exercise{file: file}) do
    case I18n.locale_dir(locale()) do
      "" ->
        Path.join("exercises", file)

      dir ->
        localized = Path.join(["exercises", dir, file])
        if File.exists?(localized), do: localized, else: Path.join("exercises", file)
    end
  end
end
