# Multiple Function Clauses
#
# In Elixir, you can define multiple versions of the same function
# with different patterns. Elixir will try each clause from top to
# bottom until it finds one that matches!
#
# Why multiple clauses?
# - Handle different input patterns differently
# - Makes code more readable than nested if/else
# - Very idiomatic in Elixir
#
# Example:
#   defmodule Greeter do
#     def hello(:world) do
#       "Hello, World!"
#     end
#
#     def hello(name) do
#       "Hello, #{name}!"
#     end
#   end
#
#   Greeter.hello(:world)    # "Hello, World!"
#   Greeter.hello("Alice")   # "Hello, Alice!"
#
# Pattern matching in function clauses:
# Functions try to match their arguments against patterns from
# top to bottom. The first matching clause runs.
#
# Common pattern - handling results:
#   def handle({:ok, value}), do: "Success: #{value}"
#   def handle({:error, reason}), do: "Error: #{reason}"
#
# Your task:
# Add a second function clause to handle {:error, _} tuples

defmodule Result do
  def handle_result({:ok, value}) do
    "Success: #{value}"
  end

  # Add your clause here for {:error, reason}
  ???
end

IO.puts(Result.handle_result({:ok, 42}))
IO.puts(Result.handle_result({:error, "failed"}))
