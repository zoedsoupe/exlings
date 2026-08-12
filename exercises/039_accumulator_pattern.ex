# The Accumulator Pattern
#
# In exercise 037 the sum was built on the way BACK: each call
# waited for the next one to return, then added its head.
#
# There is another way: carry a running result WITH you as an
# extra argument. This argument is called an accumulator.
#
# The pattern uses a helper function with an extra parameter:
#   def sum(list), do: do_sum(list, 0)     # start acc at 0
#
#   defp do_sum([], acc), do: acc          # done? return the acc
#
#   defp do_sum([head | tail], acc) do
#     do_sum(tail, acc + head)             # build the result NOW
#   end
#
# Notes:
# - defp defines a private function, only callable inside the module
# - The public function kicks things off with an initial value
# - The result is built going FORWARD, not on the way back
#
# The same pattern reverses a list:
#   def reverse(list), do: do_reverse(list, [])
#   defp do_reverse([], acc), do: acc
#   defp do_reverse([head | tail], acc), do: do_reverse(tail, [head | acc])
#
# Your task:
# Complete the accumulator update so each head is added to acc

defmodule Accumulator do
  def sum(list), do: do_sum(list, 0)

  # Base case: nothing left, the accumulator IS the result
  defp do_sum([], acc), do: acc

  # Recursive case: fold head into the accumulator, keep going
  defp do_sum([head | tail], acc) do
    do_sum(tail, ???)
  end
end

IO.puts("Sum: #{Accumulator.sum([1, 2, 3, 4, 5])}")
