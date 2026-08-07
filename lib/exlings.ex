defmodule Exlings do
  @moduledoc false

  alias Exlings.{Exercises, Progress, Runner, UI}

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
end
