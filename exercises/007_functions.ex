# Functions in Elixir are defined with def.
#
# Define a function that adds two numbers:

defmodule Math do
  def add(a, b) do
    ???  # Return the sum of a and b
  end
end

result = Math.add(5, 10)
IO.puts("Sum: #{result}")
