# Private Functions
#
# Every function you have written so far was defined with def,
# which makes it PUBLIC: anyone can call it from outside the
# module.
#
# defp defines a PRIVATE function: it can only be called from
# INSIDE the same module:
#
#   defmodule Counter do
#     def describe(list) do
#       "#{size(list)} elements"
#     end
#
#     defp size(list), do: length(list)
#   end
#
#   Counter.describe([1, 2, 3])   # "3 elements"
#   Counter.size([1, 2, 3])       # ERROR: size/1 is private!
#
# Why use private functions?
# - They are implementation details: callers should not depend on
#   them, so you can change or remove them freely
# - They keep the module's public API small and clear
# - Helpers like formatters and validators are classic candidates
#
# Inside the module, private functions are called like any other:
# just the name and the arguments, no module prefix.
#
# Your task:
# 1. Make the total/1 helper private with the right keyword
# 2. Fill in the body of item_count/1 so it returns how many
#    prices the list has

defmodule Receipt do
  def summary(prices) do
    "Total: $#{total(prices)} (#{item_count(prices)} items)"
  end

  # This helper should be an implementation detail
  ??? total(prices) do
    Enum.sum(prices)
  end

  defp item_count(prices) do
    ???
  end
end

IO.puts(Receipt.summary([10, 20, 30]))

# Try this: after fixing the exercise, call Receipt.total([1, 2])
# at the bottom of the file and read the error message.
