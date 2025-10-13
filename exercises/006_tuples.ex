# Tuples are commonly used for return values.
# The pattern {:ok, value} is very common in Elixir!
#
# Fix the pattern match:

{status, value} = ???  # Should match {:ok, 42}

IO.puts("Status: #{status}, Value: #{value}")
