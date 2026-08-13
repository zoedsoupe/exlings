# Advanced String Interpolation
#
# You already know that #{...} inserts values into strings:
#
#   name = "Alice"
#   "Hello, #{name}!"  # "Hello, Alice!"
#
# But #{...} accepts ANY Elixir expression, not just variables:
#
#   Math:          "2 + 2 = #{2 + 2}"
#   Function calls: "Shout: #{String.upcase("hey")}"
#   Pipes:         "First: #{["a", "b"] |> List.first()}"
#   Conditionals:  "Status: #{if true, do: "on", else: "off"}"
#
# Whatever the expression returns is converted to a string and
# inserted in place. This makes interpolation the go-to tool for
# building formatted output.
#
# Your task:
# Complete the two interpolations below. The third line shows a
# conditional interpolation as a free example

price = 19.99
quantity = 3
name = "elixir"

IO.puts("Product: #{String.upcase(???)}")
IO.puts("Total: $#{price * ???}")
IO.puts("In stock? #{if quantity > 0, do: "yes", else: "no"}")
