# If and Unless
#
# Elixir has if and unless for simple conditional logic. They're
# simpler than case/cond but less commonly used in idiomatic Elixir.
#
# The if expression:
# - Checks a single condition
# - Has an optional else clause
# - Returns a value (everything is an expression!)
#
# Syntax:
#   if condition do
#     true_result
#   else
#     false_result
#   end
#
# Example:
#   if temperature > 30 do
#     "It's hot!"
#   else
#     "It's not hot"
#   end
#
# The unless expression:
# - Opposite of if
# - Runs when condition is false
# - Good for negative conditions
# - Also has an optional else clause
#
# Syntax:
#   unless condition do
#     result_when_false
#   else
#     result_when_true
#   end
#
# Example:
#   unless user_logged_in? do
#     redirect_to_login()
#   end
#
# Example with else:
#   unless user_logged_in? do
#     "Please log in"
#   else
#     "Welcome!"
#   end
#
# Truthiness in Elixir:
# - false and nil are falsy
# - EVERYTHING else is truthy (including 0, "", and [])
#
# When to use if/unless?
# - Simple true/false checks
# - One or two conditions
# - But prefer pattern matching when possible!
#
# Your task:
# Complete the if and unless expressions

defmodule Checker do
  def check_positive(n) do
    if ??? do  # Check if n > 0
      "positive"
    else
      "not positive"
    end
  end

  def warn_if_negative(n) do
    unless ??? do  # Check if n >= 0
      "Warning: negative number!"
    else
      "ok"
    end
  end
end

IO.puts(Checker.check_positive(5))
IO.puts(Checker.check_positive(-3))
IO.puts(Checker.warn_if_negative(-1))
IO.puts(Checker.warn_if_negative(10))
