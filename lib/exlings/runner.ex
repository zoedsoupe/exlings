defmodule Exlings.Runner do
  @moduledoc """
  Runs exercises by executing them with `elixir`.
  """

  alias Exlings.Exercises.Exercise

  # Killing the task closes the port, which terminates the child elixir process
  @default_timeout 10_000

  @doc """
  Run an exercise: execute it and validate the output if expected.
  """
  def run(%Exercise{skip: true} = exercise) do
    {:skip, "Exercise #{exercise.number} is currently skipped"}
  end

  def run(%Exercise{} = exercise) do
    path = exercise_path(exercise.file)
    timeout = Application.get_env(:exlings, :runner_timeout, @default_timeout)
    task = Task.async(fn -> System.cmd("elixir", [path], stderr_to_stdout: true) end)

    case Task.yield(task, timeout) || Task.shutdown(task, :brutal_kill) do
      {:ok, {output, 0}} -> validate(output, exercise)
      {:ok, {output, _}} -> {:error, classify(output)}
      nil -> {:error, {:timeout, timeout}}
    end
  end

  # ponytail: string match on the exception name, good enough to split
  # compile errors from runtime errors
  defp classify(output) do
    cond do
      output =~ ~r/\*\* \((CompileError|SyntaxError|TokenMissingError)\)/ ->
        {:compile_error, output}

      output =~ ~r/fail/i ->
        {:test_failed, output}

      true ->
        {:runtime_error, output}
    end
  end

  # ExUnit exits non-zero on test failures, so reaching validate/2 with
  # kind :exunit means all tests passed. The report is the output.
  defp validate(output, %Exercise{kind: :exunit}) do
    {:ok, output}
  end

  defp validate(output, %Exercise{expected_output: nil}) do
    # No expected output - just needs to run successfully
    {:ok, output}
  end

  defp validate(output, %Exercise{expected_output: expected}) do
    # Trim both for comparison (ignore trailing whitespace)
    actual = String.trim_trailing(output)
    expected = String.trim_trailing(expected)

    if actual == expected do
      {:ok, output}
    else
      {:error, {:wrong_output, expected, actual}}
    end
  end

  defp exercise_path(file) do
    Path.join("exercises", file)
  end
end
