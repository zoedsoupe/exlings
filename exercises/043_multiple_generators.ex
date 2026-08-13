# Multiple Generators
#
# A comprehension can have more than one generator. Each extra
# generator multiplies the iterations: every element of the first
# list is combined with every element of the second.
#
# This is called a cartesian product:
#
#   for x <- [1, 2], y <- [:a, :b], do: {x, y}
#   # Returns [{1, :a}, {1, :b}, {2, :a}, {2, :b}]
#
# How it runs:
#   x = 1 pairs with :a, then with :b
#   x = 2 pairs with :a, then with :b
#
# It works like nested loops in other languages, but in one line.
# Generators can be lists, ranges, maps, or any enumerable.
#
# Your task:
# Add the second generator so pairs contains every {x, y}
# combination of the two lists

xs = [1, 2, 3]
ys = [:a, :b]

pairs = for x <- xs, ???, do: {x, y}

IO.puts("Pairs: #{inspect(pairs)}")
