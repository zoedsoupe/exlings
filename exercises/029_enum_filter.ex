# Enum.filter
#
# Enum.filter/2 keeps only the elements that match a condition.
# The function you pass must return true (keep) or false (discard).
#
# What is Enum.filter?
# - Takes a list and a predicate function (returns true/false)
# - Returns a NEW list with only the matching elements
# - Elements where the function returns false are left out
#
# Syntax:
#   Enum.filter(list, fn element -> condition end)
#
# Examples:
#   Enum.filter([1, 2, 3, 4], fn n -> n > 2 end)
#   # Returns [3, 4]
#
#   Enum.filter([1, 2, 3, 4], fn n -> rem(n, 2) == 0 end)
#   # Returns [2, 4] (only even numbers)
#
# Remember: rem(n, 2) == 0 checks if a number is even!
#
# Your task:
# Filter the list to keep only even numbers, then only long words

numbers = [1, 2, 3, 4, 5, 6, 7, 8]
evens = Enum.filter(numbers, ???)  # Keep only even numbers

words = ["hi", "elixir", "hey", "erlang"]
long_words = Enum.filter(words, ???)  # Keep words with more than 3 letters

IO.puts("Evens: #{inspect(evens)}")
IO.puts("Long words: #{inspect(long_words)}")
