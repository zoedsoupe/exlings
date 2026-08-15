# Error Tuples
#
# Elixir has no null and rarely raises for expected failures. Instead,
# functions that can fail return a tagged tuple:
#
#   {:ok, result}     -- everything worked, here is the value
#   {:error, reason}  -- something went wrong, here is why
#
# You see this convention all over the standard library:
#
#   File.read("README.md")   # => {:ok, "# exlings..."}
#   File.read("nope.txt")    # => {:error, :enoent}
#   Integer.parse("42")      # => {42, ""}
#   Integer.parse("abc")     # => :error
#
# Callers handle both outcomes with pattern matching, usually inside
# a case expression:
#
#   case File.read("data.txt") do
#     {:ok, content}   -> "got #{byte_size(content)} bytes"
#     {:error, reason} -> "failed: #{reason}"
#   end
#
# Writing a function that returns error tuples is simple: return
# {:ok, value} from the happy path and {:error, reason} when the
# input is invalid. Multiple function clauses make this natural,
# because you can match on the bad input directly:
#
#   def divide(_, 0), do: {:error, "division by zero"}
#   def divide(a, b), do: {:ok, div(a, b)}
#
# Your task:
# Complete the Math.divide/2 clauses below. It must return
# {:error, "division by zero"} when the divisor is 0, and
# {:ok, result} otherwise. The callers are already written.

defmodule Math do
  def divide(_, ???), do: {:error, "division by zero"}
  def divide(a, b), do: {:ok, ???}
end

case Math.divide(10, 2) do
  {:ok, result} -> IO.puts("10 / 2 = #{result}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end

case Math.divide(10, 0) do
  {:ok, result} -> IO.puts("10 / 0 = #{result}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end
