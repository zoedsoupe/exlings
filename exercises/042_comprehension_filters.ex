# Filters in Comprehensions
#
# Comprehensions can filter and transform in ONE expression.
# Add a condition after the generator, before do:
#
#   for n <- [1, 2, 3, 4], n > 2, do: n * 10
#   # Returns [30, 40]
#
# Read it as: "for each n in the list WHERE n > 2, do n * 10".
#
# This single line does the work of filter plus map:
#   [1, 2, 3, 4]
#   |> Enum.filter(fn n -> n > 2 end)
#   |> Enum.map(fn n -> n * 10 end)
#
# Elements where the condition is false are simply skipped.
# You can also add several conditions separated by commas.
#
# Your task:
# Add a filter so only the squares of EVEN numbers are kept

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

even_squares = for n <- numbers, ???, do: n * n

IO.puts("Even squares: #{inspect(even_squares)}")
