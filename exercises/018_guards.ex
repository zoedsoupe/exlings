# Guards
#
# Guards let you add conditions to your function clauses using 'when'.
# They're like extra filters to make pattern matching even more powerful!
#
# What are guards?
# - Additional conditions on function clauses
# - Use the 'when' keyword
# - Only certain expressions allowed (for safety)
# - Checked after pattern matching
#
# Basic syntax:
#   def function(argument) when condition do
#     # body
#   end
#
# Examples:
#   def classify(n) when n > 0 do
#     "positive"
#   end
#
#   def classify(n) when n < 0 do
#     "negative"
#   end
#
#   def classify(0) do
#     "zero"
#   end
#
# Common guard expressions:
# - Comparisons: >, <, >=, <=, ==, !=
# - Type checks: is_integer, is_float, is_atom, is_list
# - Boolean: and, or, not
# - Math: +, -, *, /
#
# Why guards?
# - Make function clauses more specific
# - Self-documenting code
# - Fail fast on invalid input
#
# Your task:
# Complete the guards for the positive and negative clauses

defmodule Number do
  def classify(n) when ??? do  # when n > 0
    "positive"
  end

  def classify(n) when ??? do  # when n < 0
    "negative"
  end

  def classify(0) do
    "zero"
  end
end

IO.puts(Number.classify(5))
IO.puts(Number.classify(-3))
IO.puts(Number.classify(0))
