# @exercise_topic Basic Types
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint Use string interpolation with #{} inside double quotes

# Strings in Elixir can be concatenated or interpolated.
#
# Your task: Create a greeting message using string interpolation.
#
# String interpolation uses #{} inside double quotes:
#   "Hello, #{name}!"

defmodule Strings do
  def greet do
    name = "Alice"

    # TODO: Create a greeting message using string interpolation
    # The message should be "Hello, Alice!"
    greeting = ???

    IO.puts(greeting)
  end
end

Strings.greet()
