defmodule Exlings.Exercises.Loader do
  @moduledoc """
  Responsible for discovering and loading exercises from the filesystem.

  Exercises are discovered by scanning the `priv/exercises/` directory and
  loading them in order based on their filename prefix (e.g., 001_, 002_, etc.).

  ## Exercise File Format

  Exercise files should follow this naming convention:
  - `XXX_name.ex` where XXX is a zero-padded number (e.g., 001_hello_world.ex)

  Exercise metadata is embedded in the source file as module attributes:
  - `@exercise_topic` - The topic category
  - `@exercise_hint` - A helpful hint for learners
  - `@exercise_mode` - The execution mode (:compile or :test)
  - `@exercise_difficulty` - The difficulty level (:easy, :medium, :hard)
  """

  alias Exlings.Exercises.Exercise

  @exercises_dir "priv/exercises"

  @doc """
  Loads all exercises from the exercises directory.

  Returns a list of Exercise structs sorted by their numeric prefix.

  ## Examples

      iex> Loader.load_all()
      [%Exercise{name: "001_hello_world", ...}, ...]
  """
  @spec load_all :: list(Exercise.t())
  def load_all do
    @exercises_dir
    |> File.ls!()
    |> Enum.filter(&String.ends_with?(&1, ".ex"))
    |> Enum.sort()
    |> Enum.map(&load_exercise/1)
  end

  # Loads a single exercise by filename.
  # Returns an Exercise struct with metadata extracted from the file.
  @spec load_exercise(String.t()) :: Exercise.t()
  defp load_exercise(filename) do
    name = Path.basename(filename, ".ex")
    path = Path.join(@exercises_dir, filename)
    metadata = extract_metadata(path)

    %Exercise{
      name: name,
      path: path,
      mode: metadata[:mode] || :compile,
      hint: metadata[:hint] || "No hint available yet!",
      topic: metadata[:topic],
      difficulty: metadata[:difficulty]
    }
  end

  # Extracts metadata from an exercise file by reading module attributes.
  # Metadata is embedded in comments at the top of the file in the format:
  # @exercise_X value
  @spec extract_metadata(Path.t()) :: keyword()
  defp extract_metadata(path) do
    content = File.read!(path)

    [
      mode: extract_mode(content),
      hint: extract_hint(content),
      topic: extract_topic(content),
      difficulty: extract_difficulty(content)
    ]
  end

  defp extract_mode(content) do
    case Regex.run(~r/#\s*@exercise_mode\s+:(\w+)/, content) do
      [_, mode] -> String.to_atom(mode)
      _ -> :compile
    end
  end

  defp extract_hint(content) do
    case Regex.run(~r/#\s*@exercise_hint\s+(.+)$/, content, multiline: true) do
      [_, hint] -> String.trim(hint)
      _ -> nil
    end
  end

  defp extract_topic(content) do
    case Regex.run(~r/#\s*@exercise_topic\s+(.+)$/, content) do
      [_, topic] -> String.trim(topic)
      _ -> nil
    end
  end

  defp extract_difficulty(content) do
    case Regex.run(~r/#\s*@exercise_difficulty\s+:(\w+)/, content) do
      [_, difficulty] -> String.to_atom(difficulty)
      _ -> nil
    end
  end
end
