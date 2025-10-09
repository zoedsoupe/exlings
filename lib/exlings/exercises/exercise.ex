defmodule Exlings.Exercises.Exercise do
  @moduledoc """
  Represents a single exercise with its metadata and execution mode.

  ## Fields

  - `name` - The unique identifier for the exercise (e.g., "001_hello_world")
  - `path` - The file path to the exercise source code
  - `mode` - The execution mode (`:compile` or `:test`)
  - `hint` - A helpful hint for when the learner is stuck
  - `topic` - The topic category (e.g., "variables", "functions")
  - `difficulty` - The difficulty level (`:easy`, `:medium`, `:hard`)
  """

  alias Exlings.Exercises
  alias __MODULE__

  @type state :: :pending | :done
  @type mode :: :compile | :test
  @type difficulty :: :easy | :medium | :hard

  @type t :: %Exercise{
          name: String.t(),
          path: Path.t(),
          mode: mode,
          hint: String.t(),
          topic: String.t() | nil,
          difficulty: difficulty | nil
        }

  @fields ~w(name path mode hint topic difficulty)a
  @enforce_keys ~w(name path mode hint)a
  defstruct @fields

  @doc """
  Returns the current state of an exercise by attempting to run it.

  ## Examples

      iex> get_state(exercise)
      :pending

      iex> get_state(completed_exercise)
      :done
  """
  @spec get_state(t) :: state
  def get_state(%Exercise{} = e) do
    case Exercises.run(e) do
      {:stdout, _} -> :done
      {:stderr, _} -> :pending
    end
  end
end
