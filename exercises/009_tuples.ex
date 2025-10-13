# Tuples
#
# Tuples are ordered collections of values, written with curly braces.
# They're perfect for grouping a fixed number of items together!
#
# What are tuples?
# - Written with curly braces: {1, 2, 3}
# - Can hold different types: {:ok, "success", 42}
# - Fixed size (not meant to grow or shrink)
# - Very fast to access
#
# Common uses:
# - Return multiple values from a function
# - Status tuples like {:ok, result} or {:error, reason}
# - Representing fixed-size data like coordinates {x, y}
#
# Examples:
#   point = {10, 20}
#   person = {"Alice", 25}
#   result = {:ok, "Data loaded"}
#
# Tuples are everywhere in Elixir! You'll see them a lot when
# working with functions that can succeed or fail.
#
# Your task:
# Create tuples with the correct values

# Create a tuple with :ok and the number 42
status_tuple = ???

# Create a tuple with coordinates 100, 200
coordinates = ???

IO.puts("Status: #{inspect(status_tuple)}")
IO.puts("Coordinates: #{inspect(coordinates)}")
