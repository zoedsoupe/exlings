# @exercise_topic Collections
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint Lists are created with square brackets: [1, 2, 3]

# Lists are ordered collections of elements in Elixir.
#
# Your task: Create a list of numbers and access its elements.
#
# Lists are defined with square brackets:
#   numbers = [1, 2, 3, 4, 5]
# Access elements with Enum or pattern matching:
#   [first | rest] = numbers

defmodule Lists do
  def demonstrate do
    # TODO: Create a list containing the numbers 1, 2, 3, 4, 5
    numbers = ???

    # TODO: Use pattern matching to extract the first element
    [first | _rest] = numbers

    IO.puts("The first number is: #{first}")
    IO.puts("All numbers: #{inspect(numbers)}")
  end
end

Lists.demonstrate()
