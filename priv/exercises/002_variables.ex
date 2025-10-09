# @exercise_topic Variables
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint In Elixir, variables are bound using the = operator. Try: message = "Hello!"

# Variables in Elixir store values that you can use later.
#
# Your task: Fix this code by properly binding the message variable.
#
# In Elixir, you bind a value to a variable using the = operator:
#   variable_name = value

defmodule Variables do
  def demonstrate do
    # TODO: Bind the string "Elixir is awesome!" to the message variable
    message = ???

    IO.puts(message)
  end
end

Variables.demonstrate()
