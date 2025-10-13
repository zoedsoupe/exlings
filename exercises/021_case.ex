# Case Expressions
#
# The case expression lets you match a value against multiple patterns.
# Think of it as pattern matching with multiple options!
#
# What is case?
# - Matches a value against patterns
# - Executes the code of the first matching pattern
# - Returns the result of the matched clause
# - Must handle all possible cases (or use a catch-all)
#
# Syntax:
#   case value do
#     pattern1 -> result1
#     pattern2 -> result2
#     _ -> default_result
#   end
#
# Example:
#   case File.read("data.txt") do
#     {:ok, content} -> "File content: #{content}"
#     {:error, reason} -> "Error: #{reason}"
#   end
#
# Case vs function clauses:
# - Function clauses: Multiple definitions of the same function
# - Case: Pattern matching inside a single function
#
# Using guards in case:
#   case number do
#     n when n > 0 -> "positive"
#     n when n < 0 -> "negative"
#     0 -> "zero"
#   end
#
# The catch-all pattern:
# Use _ to match anything (like a default case)
#
# Your task:
# Complete the case expression to handle both :ok and :error tuples

defmodule Handler do
  def handle(result) do
    case result do
      {:ok, ???} -> "Success: #{value}"
      {:error, ???} -> "Error: #{reason}"
    end
  end
end

IO.puts(Handler.handle({:ok, "data loaded"}))
IO.puts(Handler.handle({:error, "connection failed"}))
