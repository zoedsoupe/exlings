# @exercise_topic Functions
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint Functions are defined with def name(parameters) do ... end

# Functions are the building blocks of Elixir programs.
#
# Your task: Complete the function to add two numbers.
#
# Function definition:
#   def function_name(param1, param2) do
#     # function body
#   end

defmodule Functions do
  # TODO: Complete this function to return the sum of a and b
  def add(a, b) do
    ???
  end

  def demonstrate do
    result = add(5, 7)
    IO.puts("5 + 7 = #{result}")
  end
end

Functions.demonstrate()
