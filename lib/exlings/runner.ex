defmodule Exlings.Runner do
  @moduledoc """
  Runs exercises - compiles and executes them.
  Simple approach: just compile and run, no separate modes.
  """

  alias Exlings.Exercises.Exercise

  @doc """
  Run an exercise: compile and execute it, validate output if expected.
  """
  def run(%Exercise{skip: true} = exercise) do
    {:skip, "Exercise #{exercise.number} is currently skipped"}
  end

  def run(%Exercise{} = exercise) do
    path = exercise_path(exercise.file)

    with {:ok, _} <- compile(path),
         {:ok, output} <- execute(path) do
      validate(output, exercise)
    end
  end

  defp compile(path) do
    case System.cmd("mix", ["run", "--no-start", path], stderr_to_stdout: true) do
      {_, 0} ->
        {:ok, :compiled}

      {error, _} ->
        {:error, {:compile_error, error}}
    end
  end

  defp execute(path) do
    case System.cmd("mix", ["run", "--no-start", path], stderr_to_stdout: true) do
      {output, 0} ->
        {:ok, output}

      {output, _} ->
        {:error, {:runtime_error, output}}
    end
  end

  defp validate(output, %Exercise{expected_output: nil}) do
    # No expected output - just needs to compile and run
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
