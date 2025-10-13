defmodule Exlings.Progress do
  @moduledoc """
  Simple progress tracking - just stores last completed exercise number in `.progress` file.
  """

  @default_progress_file ".progress"

  @doc """
  Read the last completed exercise number.
  Returns 0 if file doesn't exist (starting fresh).
  """
  def read do
    case File.read(progress_file()) do
      {:ok, content} ->
        content
        |> String.trim()
        |> String.to_integer()

      {:error, :enoent} ->
        0

      {:error, _} ->
        0
    end
  rescue
    _ -> 0
  end

  @doc """
  Write the exercise number as completed.
  """
  def write(exercise_number) when is_integer(exercise_number) do
    File.write!(progress_file(), "#{exercise_number}\n")
  end

  @doc """
  Reset progress by deleting the file.
  """
  def reset do
    case File.rm(progress_file()) do
      :ok -> :ok
      {:error, :enoent} -> :ok
      {:error, reason} -> {:error, reason}
    end
  end

  defp progress_file do
    Application.get_env(:exlings, :progress_file, @default_progress_file)
  end
end
