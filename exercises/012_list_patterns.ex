# Pattern Matching with Lists
#
# Lists have a special pattern matching syntax that's super useful!
# You can split a list into its head (first element) and tail (rest).
#
# The [head | tail] syntax:
# - head - the first element
# - tail - a list of remaining elements
# - | (pipe) - separates head from tail
#
# Examples:
#   [first | rest] = [1, 2, 3, 4]
#   # first is 1
#   # rest is [2, 3, 4]
#
#   [a | b] = [5]
#   # a is 5
#   # b is [] (empty list)
#
# You can match multiple elements:
#   [a, b | rest] = [1, 2, 3, 4, 5]
#   # a is 1, b is 2, rest is [3, 4, 5]
#
# Why is this useful?
# - Process lists one element at a time
# - Essential for recursion (coming later!)
# - Very common pattern in Elixir code
#
# Your task:
# Use pattern matching to extract the first element and the rest

[first | rest] = ???  # Should match [1, 2, 3, 4]

IO.puts("First: #{first}")
IO.puts("Rest: #{inspect(rest)}")
