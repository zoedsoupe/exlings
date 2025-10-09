# @exercise_topic Pattern Matching
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint Use pattern matching to extract values: {status, value} = {:ok, 42}

# Pattern matching is one of Elixir's most powerful features!
# The = operator is actually the match operator, not assignment.
#
# Your task: Use pattern matching to extract the value from a tuple.
#
# Pattern matching example:
#   {x, y} = {1, 2}  # x is 1, y is 2

defmodule PatternMatching do
  def extract_value do
    result = {:ok, "Success!"}

    # TODO: Use pattern matching to extract "Success!" into the message variable
    ??? = result

    IO.puts("The message is: #{message}")
  end
end

PatternMatching.extract_value()
