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

  @doc "Reset progress by deleting the file. The language choice is kept."
  def reset do
    lang = language()

    case File.rm(progress_file()) do
      :ok -> if(lang, do: set_language(lang), else: :ok)
      {:error, :enoent} -> :ok
      {:error, reason} -> {:error, reason}
    end
  end

  # The chosen language is stored as a "lang:<name>" line. parse/1 only
  # accepts plain integers, so it never counts as done, and older versions
  # of exlings simply ignore the line.

  @doc "The language stored in the progress file, or nil if never chosen."
  def language do
    case File.read(progress_file()) do
      {:ok, content} ->
        content
        |> String.split("\n", trim: true)
        |> Enum.find_value(&parse_lang_line/1)

      {:error, _} ->
        nil
    end
  end

  defp parse_lang_line(line) do
    case String.trim(line) do
      "lang:" <> lang -> lang
      _ -> nil
    end
  end

  @doc "Store the chosen language."
  def set_language(lang) when is_binary(lang) do
    File.write!(progress_file(), "lang:#{lang}\n", [:append])
  end

  # Hint reveals are stored as "<number>h" lines in the same file.
  # parse/1 only accepts plain integers, so these never count as done.

  @doc "How many hints have been revealed for an exercise."
  def hints_revealed(number) when is_integer(number) do
    case File.read(progress_file()) do
      {:ok, content} ->
        content
        |> String.split("\n", trim: true)
        |> Enum.count(&(String.trim(&1) == "#{number}h"))

      {:error, _} ->
        0
    end
  end

  @doc "Record that one more hint was revealed for an exercise."
  def reveal_hint(number) when is_integer(number) do
    File.write!(progress_file(), "#{number}h\n", [:append])
  end

  defp progress_file do
    Application.get_env(:exlings, :progress_file, @default_progress_file)
  end
end
