# Tail Call Optimization
#
# Look at these two ways to count a list:
#
#   # Not tail recursive:
#   def count([_head | tail]), do: 1 + count(tail)
#
#   # Tail recursive:
#   def count(list), do: do_count(list, 0)
#   defp do_count([], acc), do: acc
#   defp do_count([_head | tail], acc), do: do_count(tail, acc + 1)
#
# A recursive call is in "tail position" when it is the LAST thing
# the function does. In the first version the + 1 still waits for
# the recursive call to return, so the BEAM must remember every
# call on the stack. In the second version nothing happens after
# the call, so the BEAM reuses the same stack frame. That is tail
# call optimization (TCO).
#
# Why it matters:
# - Non-tail recursion uses memory proportional to the list size
# - Tail recursion uses CONSTANT memory, even for huge lists
# - Loops that run forever (like servers) must be tail recursive
#
# Your task:
# Write the body of do_count/2 so the recursive call is in tail
# position: recurse on tail with an accumulator one bigger

defmodule ListCounter do
  def count(list), do: do_count(list, 0)

  defp do_count([], acc), do: acc

  defp do_count([_head | tail], acc) do
    ???
  end
end

list = Enum.to_list(1..1000)
IO.puts("Count: #{ListCounter.count(list)}")
