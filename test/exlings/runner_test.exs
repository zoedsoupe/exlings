defmodule Exlings.RunnerTest do
  use ExUnit.Case, async: false

  alias Exlings.Exercises.Exercise
  alias Exlings.Runner

  test "times out on non-terminating exercises" do
    Application.put_env(:exlings, :runner_timeout, 100)
    on_exit(fn -> Application.delete_env(:exlings, :runner_timeout) end)

    exercise = %Exercise{number: 0, name: "loop", file: "../test/fixtures/forever.exs"}
    assert {:error, {:timeout, 100}} = Runner.run(exercise)
  end
end
