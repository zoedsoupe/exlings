defmodule Exlings.Exercises.Exercise do
  @moduledoc "Struct representing an exercise"

  @enforce_keys [:number, :name, :file]
  defstruct [
    # 1, 2, 3...
    :number,
    # "Hello World"
    :name,
    # "001_hello_world.ex"
    :file,
    # Optional hint
    :hint,
    # "basics", "functions", etc.
    :topic,
    # For exercises that should print specific output
    :expected_output,
    # :script (validate stdout) or :exunit (validate test exit status)
    kind: :script,
    # Skip broken exercises
    skip: false
  ]
end
