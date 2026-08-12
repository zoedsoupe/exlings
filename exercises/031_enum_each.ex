# Enum.each
#
# Enum.each/2 runs a function for every element, just for its
# side effects (like printing). Unlike Enum.map, it discards the
# results and always returns the atom :ok.
#
# What is Enum.each?
# - Takes a list and a function
# - Runs the function for each element, in order
# - Returns :ok, NOT a new list
# - Use it when you care about side effects, not results
#
# Enum.map vs Enum.each:
#   Enum.map([1, 2], fn n -> n * 2 end)
#   # Returns [2, 4]
#
#   Enum.each([1, 2], fn n -> IO.puts(n) end)
#   # Prints 1 and 2, returns :ok
#
# Rule of thumb:
# - Want transformed data? Use Enum.map
# - Want to DO something for each item? Use Enum.each
#
# Your task:
# Use Enum.each to print each color on its own line

colors = ["red", "green", "blue"]

Enum.each(colors, ???)  # Print "Color: <color>" for each element
