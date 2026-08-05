defmodule Exlings.Runner do
  @moduledoc """
  Runs exercises by executing them with `elixir`.
  """

  alias Exlings.Exercises.Exercise

  @doc """
  Run an exercise: execute it and validate the output if expected.
  """
  def run(%Exercise{skip: true} = exercise) do
    {:skip, "Exercise #{exercise.number} is currently skipped"}
  end

  def run(%Exercise{} = exercise) do
    path = exercise_path(exercise.file)

    case System.cmd("elixir", [path], stderr_to_stdout: true) do
      {output, 0} -> validate(output, exercise)
      {output, _} -> {:error, classify(output)}
    end
  end

  # string match on the exception name, good enough to split
  # compile errors from runtime errors
  defp classify(output) do
    if output =~ ~r/\*\* \((CompileError|SyntaxError|TokenMissingError)\)/ do
      {:compile_error, output}
    else
      {:runtime_error, output}
    end
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
