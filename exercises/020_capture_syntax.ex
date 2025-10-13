# Capture Syntax
#
# The capture syntax &(...) is a shorthand for creating anonymous
# functions. It's more concise and commonly used in Elixir!
#
# What is capture syntax?
# - Shorthand for anonymous functions
# - Uses & and numbered placeholders: &1, &2, &3...
# - Makes code shorter and cleaner
# - Can also capture named functions
#
# Basic syntax:
#   &(&1 + &2)  is the same as  fn a, b -> a + b end
#
# The placeholders:
# - &1 is the first argument
# - &2 is the second argument
# - &3 is the third argument, and so on...
#
# Examples:
#   double = &(&1 * 2)
#   double.(5)  # 10
#
#   add = &(&1 + &2)
#   add.(3, 4)  # 7
#
# Capturing named functions:
# You can also capture existing functions:
#   to_string_func = &Integer.to_string/1
#   to_string_func.(42)  # "42"
#
# When to use capture syntax?
# - Simple, short functions
# - Passing functions to Enum functions
# - When you want concise code
#
# When NOT to use it?
# - Complex logic (use fn...end instead)
# - When it makes code less readable
#
# Your task:
# Use capture syntax to create a function that adds 10 to a number

add_ten = ???

result = add_ten.(32)
IO.puts("32 + 10 = #{result}")
