# Functions
#
# Functions are reusable blocks of code that perform specific tasks.
# In Elixir, functions are first-class citizens and live inside modules!
#
# What are functions?
# - Named blocks of code that can be called
# - Take inputs (arguments) and return outputs
# - Must be defined inside modules
# - Use the def keyword
#
# Basic function syntax:
#   defmodule MyModule do
#     def function_name(arg1, arg2) do
#       # function body
#       # last expression is the return value
#     end
#   end
#
# Important: Elixir functions return the last expression automatically!
# No need for a "return" keyword.
#
# Calling functions:
#   MyModule.function_name(value1, value2)
#
# Examples:
#   defmodule Math do
#     def add(a, b) do
#       a + b
#     end
#   end
#
#   Math.add(5, 3)  # Returns 8
#
# Your task:
# Complete the multiply function to return the product of a and b

defmodule Math do
  def multiply(a, b) do
    ???
  end
end

result = Math.multiply(6, 7)
IO.puts("6 * 7 = #{result}")
