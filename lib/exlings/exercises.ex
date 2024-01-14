defmodule Exlings.Exercises do
  @moduledoc false

  alias Exlings.Exercises.Exercise

  @spec list :: list(Exercise.t())
  def list do
    priv = List.to_string(:code.priv_dir(:exlings))

    [
      %Exercise{
        name: "001_hello_world.ex",
        path: Path.join(priv, "exercises/001_hello_world.ex"),
        mode: :compile,
        hint: """
        Function `IO.puts/1` needs a required argument!
        """
      }
    ]
  end

  @spec next_pending :: Exercise.t() | nil
  def next_pending do
    Enum.find(list(), &(Exercise.get_state(&1) == :pending))
  end

  @spec find_by(name: String.t()) :: Exercise.t() | nil
  def find_by(name: name) do
    Enum.find(list(), &(&1.name == name))
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
