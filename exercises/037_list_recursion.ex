# List Recursion
#
# Recursion and lists are best friends in Elixir! Remember the
# [head | tail] pattern from exercise 012? It lets a recursive
# function process a list one element at a time.
#
# The pattern:
# - Base case: the empty list [] (nothing left to process)
# - Recursive case: do something with head, recurse on tail
#
# Example, summing a list by hand:
#   def sum([]), do: 0
#
#   def sum([head | tail]) do
#     head + sum(tail)
#   end
#
# How sum([1, 2, 3]) runs:
#   1 + sum([2, 3])
#   1 + (2 + sum([3]))
#   1 + (2 + (3 + sum([])))
#   1 + (2 + (3 + 0))
#   6
#
# Each call adds its head to the result of the REST of the list,
# until the list is empty.
#
# Your task:
# Complete the sum function: fill in the base case and the
# recursive call

defmodule MyList do
  # Base case: what is the sum of an empty list?
  def sum([]), do: ???

  # Recursive case: head plus the sum of the rest
  def sum([head | tail]) do
    head + sum(???)
  end
end

IO.puts("Sum: #{MyList.sum([1, 2, 3, 4, 5])}")
