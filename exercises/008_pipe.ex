# The Pipe Operator |>
#
# The pipe operator makes your code more readable by eliminating nested
# function calls. It takes the result from the left side and passes it
# as the first argument to the function on the right side.
#
# Without pipe (hard to read):
#   String.reverse(String.upcase("hello"))
#
# With pipe (easier to read):
#   "hello"
#   |> String.upcase()
#   |> String.reverse()
#
# Why pipes are better:
# - Read top to bottom (natural reading order)
# - See the data transformation flow clearly
# - No need to read inside-out like with nested calls
# - Each step is on its own line
#
# Example comparison:
#   Nested: String.length(String.trim(String.upcase("  hello  ")))
#
#   Piped:  "  hello  "
#           |> String.upcase()
#           |> String.trim()
#           |> String.length()
#
# Your task:
# Fix the pipe chain by adding a function that reverses the string

result =
  "hello"
  |> String.upcase()
  |> ???()  # Add String.reverse here

IO.puts(result)
