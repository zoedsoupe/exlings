# @exercise_topic First Steps
# @exercise_mode :compile
# @exercise_difficulty :easy
# @exercise_hint The IO.puts/1 function needs a string argument to print!

# Welcome to Exlings! This is your first exercise.
#
# Your task: Make the program print "Hello, World!" to the console.
#
# The IO.puts/1 function prints text to the console, but it needs
# an argument! Replace the empty IO.puts() call with IO.puts("Hello, World!")

defmodule Greetings do
  @spec say_hello :: :ok
  def say_hello do
    # TODO: Add the string "Hello, World!" as an argument to IO.puts
    IO.puts()
  end
end

Greetings.say_hello()
