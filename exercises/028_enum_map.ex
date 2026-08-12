# Enum.map
#
# The Enum module is the workhorse of Elixir collections!
# Enum.map/2 transforms every element of a list into something new.
#
# What is Enum.map?
# - Takes a list and a function
# - Applies the function to EACH element
# - Returns a NEW list with the transformed elements
# - The original list is unchanged (immutability!)
#
# Syntax:
#   Enum.map(list, fn element -> transformation end)
#
# Examples:
#   Enum.map([1, 2, 3], fn n -> n * 2 end)
#   # Returns [2, 4, 6]
#
#   Enum.map(["a", "b"], fn s -> String.upcase(s) end)
#   # Returns ["A", "B"]
#
# With capture syntax (shorter):
#   Enum.map([1, 2, 3], &(&1 * 2))
#   # Returns [2, 4, 6]
#
# Your task:
# Use Enum.map to double each number and to upcase each word

numbers = [1, 2, 3, 4]
doubled = Enum.map(numbers, ???)  # Double each number

words = ["elixir", "is", "fun"]
shouted = Enum.map(words, ???)  # Upcase each word

IO.puts("Doubled: #{inspect(doubled)}")
IO.puts("Shouted: #{inspect(shouted)}")
