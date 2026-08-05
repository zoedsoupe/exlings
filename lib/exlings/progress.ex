defmodule Exlings.Progress do
  @moduledoc """
  Tracks completed exercises as a set of numbers, one per line, in `.progress`.
  """

  @default_progress_file ".progress"

  @doc """
  Numbers of all completed exercises.
  """
  def completed do
    case File.read(progress_file()) do
      {:ok, content} -> parse(content)
      {:error, _} -> MapSet.new()
    end
  end

  defp parse(content) do
    content
    |> String.split("\n", trim: true)
    |> Enum.flat_map(fn line ->
      case Integer.parse(String.trim(line)) do
        {n, ""} -> [n]
        _ -> []
      end
    end)
    |> MapSet.new()
  end

  @doc "Check if an exercise is completed."
  def completed?(number) when is_integer(number) do
    number in completed()
  end

  @doc "Mark an exercise as completed."
  def complete(number) when is_integer(number) do
    if completed?(number) do
      :ok
    else
      File.write!(progress_file(), "#{number}\n", [:append])
    end
  end

  @doc "Reset progress by deleting the file."
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
