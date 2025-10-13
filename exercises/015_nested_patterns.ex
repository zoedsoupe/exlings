# Nested Pattern Matching
#
# Pattern matching can go multiple levels deep! You can match
# nested data structures in a single expression.
#
# What are nested patterns?
# - Patterns within patterns
# - Extract values from deeply nested data
# - Very powerful and expressive
#
# Examples:
#   # Nested tuples
#   {{x, y}, z} = {{1, 2}, 3}
#   # x is 1, y is 2, z is 3
#
#   # Tuple with a list
#   {:ok, [first | rest]} = {:ok, [1, 2, 3]}
#   # first is 1, rest is [2, 3]
#
#   # List of tuples
#   [{:name, name}, {:age, age}] = [{:name, "Alice"}, {:age, 30}]
#   # name is "Alice", age is 30
#
# Real-world example:
# Imagine parsing a response from an API:
#   {:ok, %{status: 200, body: data}} = api_response
#
# Why is this useful?
# - Extract exactly what you need from complex structures
# - Handle different data shapes elegantly
# - Very common in real Elixir applications
#
# Your task:
# Extract the coordinates (x and y) from the nested structure

{:point, ???} = {:point, {10, 20}}

IO.puts("x = #{x}, y = #{y}")
