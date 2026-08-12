# Basic Recursion
#
# Recursion is when a function calls itself. Elixir has no loops
# like "for" or "while" from other languages. Recursion is how we
# repeat work!
#
# Every recursive function needs two things:
# - A base case: when to STOP (prevents infinite recursion)
# - A recursive case: the function calls itself with smaller input
#
# Without a base case, the function calls itself forever and the
# program crashes!
#
# Example, a function that counts down:
#   def countdown(0), do: IO.puts("Blast off!")  # base case
#
#   def countdown(n) do                          # recursive case
#     IO.puts(n)
#     countdown(n - 1)
#   end
#
# How countdown(3) runs:
#   prints 3, calls countdown(2)
#   prints 2, calls countdown(1)
#   prints 1, calls countdown(0)
#   matches the base case, prints "Blast off!", done!
#
# Your task:
# Complete the recursive call so the countdown reaches the base case

defmodule Counter do
  # Base case: stop when n is 0
  def countdown(0), do: IO.puts("Blast off!")

  # Recursive case: print n, then keep counting down
  def countdown(n) do
    IO.puts(n)
    countdown(???)  # Call countdown with a value closer to 0
  end
end

Counter.countdown(3)
