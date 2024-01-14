defmodule Exlings.Exercises.Exercise do
  @moduledoc false

  alias Exlings.Exercises
  alias __MODULE__

  @opaque state :: :pending | :done
  @opaque mode :: :compile | :test
  @type t :: %Exercise{name: String.t(), path: Path.t(), mode: mode, hint: String.t()}

  @fields ~w(name path mode hint)a
  @enforce_keys @fields
  defstruct @fields

  @spec get_state(t) :: state
  def get_state(%Exercise{} = e) do
    case Exercises.run(e) do
      {:stdout, _} -> :done
      {:stderr, _} -> :pending
    end
  end
end
