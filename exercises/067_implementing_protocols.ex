# Implementing a Protocol: String.Chars
#
# In the previous exercise you used protocols that Elixir already
# implements for built-in types. Now flip the perspective: teach
# Elixir how to turn YOUR struct into a string.
#
# Protocols themselves are defined with defprotocol. This is what the
# String.Chars definition looks like in Elixir's own source
# (simplified):
#
#   defprotocol String.Chars do
#     def to_string(term)
#   end
#
# A defprotocol declares the functions but has no code. Each TYPE
# provides the code with defimpl. Here is (a sketch of) the one for
# integers:
#
#   defimpl String.Chars, for: Integer do
#     def to_string(int), do: Integer.to_string(int)
#   end
#
# Once a defimpl exists, EVERY function that goes through the protocol
# works with your type: to_string/1, "#{...}" interpolation, and so on.
#
# Without a defimpl, interpolation raises:
#   price = Money.new(99, :USD)
#   "Price: #{price}"   # Protocol.UndefinedError!
#
# A note about scripts (you saw this with structs):
# a %Struct{} literal only works AFTER its module is compiled, so
# top-level code builds instances with a constructor function. Inside
# the defimpl the struct is already compiled, so pattern matching
# with %Money{...} is fine there.
#
# Your task:
# 1. Tell the defimpl which struct it is for
# 2. Return a string in the format "AMOUNT CURRENCY", e.g. "99 USD"
#    (interpolation works: amount is an integer, currency an atom,
#    and both already implement String.Chars)
#
# Expected output:
#   Price: 99 USD
#   Total: 99 USD

defmodule Money do
  defstruct amount: 0, currency: :USD

  # Constructor: builds a %Money{} from inside the module,
  # where the struct is already defined
  def new(amount, currency) do
    %Money{amount: amount, currency: currency}
  end
end

defimpl String.Chars, for: ??? do
  def to_string(%Money{amount: amount, currency: currency}) do
    ???
  end
end

price = Money.new(99, :USD)

IO.puts("Price: #{price}")
IO.puts("Total: " <> to_string(price))
