# Nested Modules
#
# Modules group related functions. As a project grows, you can nest
# modules inside other modules to build a namespace hierarchy:
#
#   defmodule Outer do
#     defmodule Inner do
#       def hello, do: "hi from Inner"
#     end
#   end
#
# From OUTSIDE, the inner module's full name uses dots:
#
#   Outer.Inner.hello()   # "hi from Inner"
#
# You can also define the same nesting in one line, with dots:
#
#   defmodule Outer.Inner do
#     def hello, do: "hi from Inner"
#   end
#
# Both forms create the exact same module: Outer.Inner.
#
# Important: nesting is ONLY about naming. Inner gets no special
# access to Outer's functions or data, and Outer does not
# automatically know about Inner. It is just a longer name.
#
# Your task:
# 1. Complete the call to the champion/0 function of the module
#    nested inside Arcade
# 2. Complete the dotted module definition so Arcade.Tokens exists

defmodule Arcade do
  def name, do: "Pixel Palace"

  defmodule HighScores do
    def top, do: [{"AAA", 9000}, {"BBB", 7500}]

    def champion do
      [{name, _score} | _rest] = top()
      name
    end
  end
end

# The same nesting, written with dots
defmodule Arcade.??? do
  def price, do: 2
end

IO.puts("Arcade: #{Arcade.name()}")
IO.puts("Champion: #{Arcade.???.champion()}")
IO.puts("Token price: #{Arcade.Tokens.price()}")

# Try this: nest one more level, like Arcade.Tokens.Machine,
# and call a function on it.
