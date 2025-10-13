# The pipe operator |> passes the result of one function to the next.
#
# Fix the pipe chain:

result =
  "hello"
  |> String.upcase()
  |> ???()  # Need to add a function call here that returns the string

IO.puts(result)
