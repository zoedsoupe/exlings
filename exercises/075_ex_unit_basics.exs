# Exercise 075: ExUnit Basics
#
# This exercise introduces ExUnit, Elixir's built-in testing framework.
# Tests help ensure your code works as expected and prevent regressions.
#
# Key concepts:
# - ExUnit test framework
# - test macro for defining test cases
# - assert macro for checking conditions
#
# Your task: Complete the test below to verify that the `add/2` function works correctly.
#
# Expected output: The test should pass successfully.
#
# Hints: Tests go in test/ directory and end with _test.exs

defmodule Exercise075 do
  # TODO: Fix or complete the code below

  def add(a, b) do
    a + b
  end
end

# Tests to verify the solution
ExUnit.start()

defmodule Exercise075Test do
  use ExUnit.Case

  test "adds two numbers correctly" do
    # Replace ??? with the correct assertion
    # The result of Exercise075.add(2, 3) should be 5
    ??? = Exercise075.add(2, 3)
  end
end
