# Lists in Elixir can be destructured using [head | tail] syntax.
#
# Fix the pattern match to extract the first element and rest:

[first | rest] = ???  # Should match [1, 2, 3, 4]

IO.puts("First: #{first}, Rest: #{inspect(rest)}")
