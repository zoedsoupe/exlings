# ExUnit Basics
#
# ExUnit is Elixir's built-in test framework. A test file needs
# three ingredients:
#
# 1. ExUnit.start() boots the framework (once per file).
# 2. A module that does `use ExUnit.Case` to gain the test macros.
# 3. Tests written with test/3 and checked with assert and refute:
#
#      ExUnit.start()
#
#      defmodule MathTest do
#        use ExUnit.Case
#
#        test "addition works" do
#          assert 1 + 1 == 2     # passes if the expression is truthy
#          refute 1 + 1 == 3     # passes if the expression is falsy
#        end
#      end
#
# When you run this file with `elixir`, the tests execute when the
# script finishes. Every passing test prints a dot; failures print
# a detailed report with what was expected and what actually
# happened, and the process exits with a non-zero status.
#
# assert/1 takes any expression, but assert actual == expected is
# special: on failure it shows BOTH sides of the comparison.
#
# Your task:
# The tests below already pass... once the Calculator functions do
# what the tests demand. Read each test, then replace the ???
# placeholders in Calculator so every test passes.

defmodule Calculator do
  # TODO: make the tests pass

  def add(a, b), do: ???

  def divide(_a, 0), do: {:error, :division_by_zero}
  def divide(a, b), do: {:ok, a / b}

  def even?(n), do: ???
end

ExUnit.start()

defmodule CalculatorTest do
  use ExUnit.Case

  test "add sums two numbers" do
    assert Calculator.add(2, 3) == 5
    assert Calculator.add(-1, 1) == 0
  end

  test "divide returns an error tuple for zero" do
    assert Calculator.divide(10, 0) == {:error, :division_by_zero}
    assert Calculator.divide(10, 2) == {:ok, 5.0}
  end

  test "even? checks parity" do
    assert Calculator.even?(4)
    refute Calculator.even?(7)
  end
end
