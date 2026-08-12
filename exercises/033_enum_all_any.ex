# Enum.all? and Enum.any?
#
# These two functions answer yes/no questions about a whole list.
# Both take a list and a predicate function, and return a boolean.
#
# Enum.all?/2 - do ALL elements match the condition?
#   Enum.all?([2, 4, 6], fn n -> rem(n, 2) == 0 end)
#   # true (all are even)
#
#   Enum.all?([2, 3, 6], fn n -> rem(n, 2) == 0 end)
#   # false (3 is odd)
#
# Enum.any?/2 - does AT LEAST ONE element match?
#   Enum.any?([1, 3, 4], fn n -> rem(n, 2) == 0 end)
#   # true (4 is even)
#
#   Enum.any?([1, 3, 5], fn n -> rem(n, 2) == 0 end)
#   # false (none are even)
#
# Fun facts about empty lists:
# - Enum.all?([], ...) is always true (nothing violates the condition)
# - Enum.any?([], ...) is always false (nothing satisfies it)
#
# Your task:
# Check if all numbers are positive, and if any number is negative

numbers = [5, 3, 8, 1]

all_positive = Enum.all?(numbers, ???)  # Is every number greater than 0?
any_negative = Enum.any?(numbers, ???)  # Is there any number less than 0?

IO.puts("All positive? #{all_positive}")
IO.puts("Any negative? #{any_negative}")
