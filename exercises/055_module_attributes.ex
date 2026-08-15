# Module Attributes
#
# Modules can carry named VALUES, written with @name at the top
# of the module:
#
#   defmodule Config do
#     @retries 3
#
#     def retries, do: @retries
#   end
#
#   Config.retries()   # 3
#
# How they work:
# - The value is set when the module COMPILES and read anywhere
#   in the module body with @name, including inside functions
# - Think of them as CONSTANTS: configuration that never changes
#   while the program runs
# - Unlike import (previous exercises), attributes on a module
#   defined in the same script file work without any caveat
#
# You have already met special attributes used by Elixir itself:
# - @moduledoc - documentation for the module
# - @doc       - documentation for one function
# - @behaviour - declares a behaviour the module implements
#
# Your task:
# Read the right attribute inside each function below.

defmodule GameConfig do
  @title "Star Runner"
  @max_lives 3

  def title, do: ???

  def max_lives, do: ???

  def welcome do
    "Welcome to #{@title}! Lives: #{@max_lives}"
  end
end

IO.puts(GameConfig.title())
IO.puts(GameConfig.max_lives())
IO.puts(GameConfig.welcome())

# Try this: add a @genre attribute and use it in welcome/0.
