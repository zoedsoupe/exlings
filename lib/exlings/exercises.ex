defmodule Exlings.Exercises do
  @moduledoc """
  Core module for managing and executing exercises.

  This module provides functions for listing, finding, and running exercises.
  Exercises are loaded dynamically from the filesystem using the Loader module.
  """

  alias Exlings.Exercises.Exercise
  alias Exlings.Exercises.Loader

  @doc """
  Returns a list of all available exercises.

  Exercises are loaded from the priv/exercises directory and cached.
  """
  @spec list :: list(Exercise.t())
  def list do
    Loader.load_all()
  end

  @doc """
  Returns the next pending (incomplete) exercise, or nil if all are complete.
  """
  @spec next_pending :: Exercise.t() | nil
  def next_pending do
    Enum.find(list(), &(Exercise.get_state(&1) == :pending))
  end

  @doc """
  Finds an exercise by name or path.

  ## Examples

      iex> find_by(name: "001_hello_world")
      %Exercise{name: "001_hello_world", ...}

      iex> find_by(path: "priv/exercises/001_hello_world.ex")
      %Exercise{name: "001_hello_world", ...}
  """
  @spec find_by([name: String.t()] | [path: Path.t()]) :: Exercise.t() | nil
  def find_by(name: name) do
    Enum.find(list(), &(&1.name == name))
  end

  def find_by(path: path) do
    Enum.find(list(), &(&1.path =~ path))
  end

  @doc """
  Runs an exercise and returns the result.

  Returns:
  - `{:stdout, output}` if the exercise runs successfully
  - `{:stderr, output}` if the exercise fails to compile or run
  - `{:error, reason}` if the elixir executable is not found
  """
  @spec run(Exercise.t()) :: {:stdout, binary} | {:stderr, binary} | {:error, binary}
  def run(%Exercise{} = e) do
    if exec = System.find_executable("elixir") do
      path = Path.expand(e.path)

      case System.cmd(exec, [path], stderr_to_stdout: true) do
        {out, 1} -> {:stderr, out}
        {out, 0} -> {:stdout, out}
      end
    else
      {:error, "'elixir' executable not found!"}
    end
  end
end
