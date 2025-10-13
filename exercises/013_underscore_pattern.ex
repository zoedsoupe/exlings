# The Underscore Pattern
#
# Sometimes you need to match a pattern, but you don't care about
# some of the values. That's where the underscore _ comes in!
#
# What is the underscore _?
# - A special pattern that matches anything
# - The matched value is thrown away (not bound to a variable)
# - Useful when you only need some values from a structure
#
# Examples:
#   {_, x} = {1, 2}           # We only care about x (which is 2)
#   [_, second, _] = [1, 2, 3]  # We only care about second (which is 2)
#   {:ok, _} = {:ok, 42}      # We only care that it's :ok
#
# Why use underscore?
# - Makes your code clearer (shows what you don't need)
# - Avoids unused variable warnings
# - Common in pattern matching and function clauses
#
# Multiple underscores:
# You can use _ multiple times in the same pattern:
#   {_, _, x, _} = {1, 2, 3, 4}  # Only x is bound (to 3)
#
# Your task:
# Extract only the status from the tuple, ignoring the error message

{status, ???} = {:error, "File not found"}

IO.puts("Status: #{status}")
