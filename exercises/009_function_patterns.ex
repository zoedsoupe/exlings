# Functions can have multiple clauses that pattern match.
#
# Define handle_result to pattern match on {:ok, _} and {:error, _}:

defmodule Result do
  def handle_result({:ok, _value}) do
    "ok"
  end

  def handle_result(???) do  # Add pattern for {:error, _}
    "error"
  end
end

IO.puts(Result.handle_result({:ok, 42}))
IO.puts(Result.handle_result({:error, "failed"}))
