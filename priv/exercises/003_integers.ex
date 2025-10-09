# @exercise_topic Basic Types
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint Use arithmetic operators like +, -, *, and / to calculate the result

# Elixir supports basic arithmetic operations with integers.
#
# Your task: Calculate the sum of two numbers and print the result.
#
# You can use these operators:
#   + for addition
#   - for subtraction
#   * for multiplication
#   div for integer division

defmodule Integers do
  def calculate do
    x = 5
    y = 10

    # TODO: Calculate the sum of x and y
    result = ???

    IO.puts("The sum is: #{result}")
  end
end

Integers.calculate()
