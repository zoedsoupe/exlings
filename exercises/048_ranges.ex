# Ranges
#
# A range represents a sequence of integers between two values:
#
#   1..5      # the numbers 1, 2, 3, 4, 5
#   1..10     # 1 up to 10
#
# Ranges are memory-efficient: they only store the start and end,
# not every value in between. A range of 1..1_000_000 takes the
# same space as 1..5!
#
# Ranges are NOT lists, but they ARE enumerable. Every Enum
# function works on them directly:
#
#   Enum.sum(1..5)            # 15
#   Enum.map(1..3, fn n -> n * n end)  # [1, 4, 9]
#
# Want an actual list? Convert explicitly:
#   Enum.to_list(1..5)        # [1, 2, 3, 4, 5]
#
# Your task:
# Create a range from 1 to 5, then watch Enum work on it directly

range = ???  # A range from 1 to 5

IO.puts("Range: #{inspect(range)}")
IO.puts("Sum: #{Enum.sum(range)}")

squares = Enum.map(range, fn n -> n * n end)
IO.puts("Squares: #{inspect(squares)}")
