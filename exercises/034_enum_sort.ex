# Enum.sort
#
# Enum.sort/1 orders a list from smallest to biggest.
# Enum.sort/2 lets you provide your own comparison function.
#
# Basic sorting:
#   Enum.sort([3, 1, 2])
#   # Returns [1, 2, 3]
#
#   Enum.sort(["banana", "apple"])
#   # Returns ["apple", "banana"]
#
# Custom sorting with a comparison function:
# The function receives two elements and must return true when
# the first should come BEFORE the second.
#
#   Enum.sort([3, 1, 2], fn a, b -> a >= b end)
#   # Returns [3, 2, 1] (descending)
#
# There's also a shortcut for ascending/descending order:
#   Enum.sort([3, 1, 2], :asc)   # [1, 2, 3]
#   Enum.sort([3, 1, 2], :desc)  # [3, 2, 1]
#
# Your task:
# The ascending sort is done. Sort the same list in descending
# order using a custom comparison function

numbers = [5, 2, 8, 1, 3]

ascending = Enum.sort(numbers)
descending = Enum.sort(numbers, ???)  # Biggest first: a comes before b when a >= b

IO.puts("Ascending: #{inspect(ascending)}")
IO.puts("Descending: #{inspect(descending)}")
