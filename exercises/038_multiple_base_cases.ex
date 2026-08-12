# Multiple Base Cases
#
# Some recursive functions need MORE THAN ONE base case.
# The Fibonacci sequence is the classic example.
#
# Fibonacci numbers:
#   fib(0) = 0
#   fib(1) = 1
#   fib(n) = fib(n - 1) + fib(n - 2)
#
# Each number is the sum of the two before it:
#   0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
#
# Why two base cases? fib(n) depends on the TWO previous values.
# If we only stopped at 0, fib(1) would try fib(0) + fib(-1) and
# recurse into negative numbers forever!
#
# With multiple clauses, each base case is just its own clause:
#   def fib(0), do: 0  # first base case
#   def fib(1), do: 1  # second base case
#
# Your task:
# Fill in the two base cases of the Fibonacci function

defmodule Fib do
  def fib(0), do: ???
  def fib(1), do: ???

  def fib(n) do
    fib(n - 1) + fib(n - 2)
  end
end

IO.puts("fib(10) = #{Fib.fib(10)}")
