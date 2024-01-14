defmodule Exlings.Exercises do
  @moduledoc false

  alias Exlings.CLI.UI
  alias Exlings.Exercises.Exercise

  @spec list :: list(Exercise.t())
  def list do
    [
      %Exercise{
        name: "001_hello_world",
        path: "priv/exercises/001_hello_world.ex",
        mode: :compile,
        hint: """
        Function #{UI.code("IO.puts/1")} needs a required argument!
        """
      }
    ]
  end

  @spec next_pending :: Exercise.t() | nil
  def next_pending do
    Enum.find(list(), &(Exercise.get_state(&1) == :pending))
  end

  @spec find_by([name: String.t()] | [path: Path.t()]) :: Exercise.t() | nil
  def find_by(name: name) do
    Enum.find(list(), &(&1.name == name))
  end

  def find_by(path: path) do
    Enum.find(list(), &(&1.path =~ path))
  end

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
