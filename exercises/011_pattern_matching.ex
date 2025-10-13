# Pattern Matching - Introduction
#
# Here's where Elixir gets really interesting! In Elixir, the = operator
# isn't just assignment - it's pattern matching!
#
# What is pattern matching?
# - The = operator tries to make both sides match
# - If they can match, variables get bound to values
# - If they can't match, you get an error
#
# Simple examples:
#   x = 5              # x matches 5, x is now 5
#   5 = x              # 5 matches x (which is 5), succeeds!
#   6 = x              # 6 doesn't match x (which is 5), error!
#
# Pattern matching with tuples:
#   {a, b} = {1, 2}    # a is 1, b is 2
#   {x, y, z} = {1, 2, 3}  # x is 1, y is 2, z is 3
#
# This is incredibly powerful! You can extract values from data
# structures easily.
#
# Why is this useful?
# - Extract values from complex data
# - Validate data structure
# - Write cleaner, more readable code
#
# Your task:
# Use pattern matching to extract x and y from the tuple

{x, y} = ???  # Should match the tuple {5, 10}

IO.puts("x = #{x}, y = #{y}")
