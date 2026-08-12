# Basic Comprehensions
#
# Comprehensions are a compact syntax for transforming enumerables.
# The "for" special form reads almost like English:
#
#   for n <- [1, 2, 3], do: n * 2
#   # Returns [2, 4, 6]
#
# Read it as: "for each n taken FROM the list, DO n * 2".
#
# The n <- list part is called a generator. It pulls each element
# out of the list, one at a time.
#
# Comprehension vs Enum.map:
#   Enum.map([1, 2, 3], fn n -> n * n end)
#   for n <- [1, 2, 3], do: n * n
#   # Both return [1, 4, 9]
#
# Comprehensions can do much more than map (filters, multiple
# generators, collecting into maps), as the next exercises show.
#
# Your task:
# Use a comprehension to square each number

numbers = [1, 2, 3, 4, 5]

squares = for n <- numbers, do: ???

IO.puts("Squares: #{inspect(squares)}")
