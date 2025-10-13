# Cond Expressions
#
# The cond expression is like a series of if-else statements. It
# evaluates conditions from top to bottom and runs the first true one.
#
# What is cond?
# - Checks multiple conditions
# - Runs the first clause that evaluates to true
# - Must have at least one true clause (often use true as catch-all)
# - Returns the result of the matched clause
#
# Syntax:
#   cond do
#     condition1 -> result1
#     condition2 -> result2
#     true -> default_result
#   end
#
# Example:
#   cond do
#     temperature > 30 -> "Hot!"
#     temperature > 20 -> "Warm"
#     temperature > 10 -> "Cool"
#     true -> "Cold!"
#   end
#
# When to use cond?
# - Multiple conditions to check (not just pattern matching)
# - Checking different boolean expressions
# - Like if-else chains in other languages
#
# Important: At least one clause must be true, or you'll get a runtime
# error! That's why we often use 'true' as the last clause.
#
# Case vs Cond:
# - case: Pattern match against a value
# - cond: Check multiple boolean conditions
#
# Your task:
# Complete the cond to classify ages into categories

defmodule AgeClassifier do
  def classify(age) do
    cond do
      age < 13 -> ???  # Should return "child"
      age < 20 -> ???  # Should return "teenager"
      age < 60 -> ???  # Should return "adult"
      true -> ???      # Should return "senior"
    end
  end
end

IO.puts(AgeClassifier.classify(10))
IO.puts(AgeClassifier.classify(16))
IO.puts(AgeClassifier.classify(35))
IO.puts(AgeClassifier.classify(70))
