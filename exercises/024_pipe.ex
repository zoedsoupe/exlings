# The Pipe Operator
#
# The pipe operator |> is one of Elixir's most loved features!
# It lets you chain function calls in a readable, left-to-right way.
#
# What is the pipe operator?
# - Takes the result from the left side
# - Passes it as the FIRST argument to the function on the right
# - Makes nested function calls readable
# - Read code like a pipeline of transformations
#
# Without pipe:
#   String.upcase(String.trim("  hello  "))
#   # Hard to read: inside-out
#
# With pipe:
#   "  hello  "
#   |> String.trim()
#   |> String.upcase()
#   # Easy to read: top-to-bottom, left-to-right
#
# How it works:
#   value |> function()  becomes  function(value)
#   value |> function(arg2)  becomes  function(value, arg2)
#
# Examples:
#   "hello" |> String.upcase()
#   # Same as: String.upcase("hello")
#
#   [1, 2, 3] |> Enum.map(&(&1 * 2)) |> Enum.sum()
#   # Same as: Enum.sum(Enum.map([1, 2, 3], &(&1 * 2)))
#
# Why use pipes?
# - Much more readable
# - Shows the flow of data transformations
# - Very common in Elixir code
# - Makes complex operations clear
#
# Your task:
# Complete the pipe chain to transform the string

result =
  "  elixir is awesome  "
  |> String.trim()
  |> ???()              # Make it uppercase
  |> String.replace("AWESOME", "AMAZING")

IO.puts(result)
