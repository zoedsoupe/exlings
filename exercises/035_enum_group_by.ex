# Enum.group_by
#
# Enum.group_by/2 splits a list into groups, returned as a map.
# The function you pass computes the KEY for each element, and
# elements with the same key end up in the same group.
#
# What is Enum.group_by?
# - Takes a list and a function
# - The function's return value becomes the map key
# - Returns a map: %{key => [elements with that key]}
#
# Syntax:
#   Enum.group_by(list, fn element -> group_key end)
#
# Examples:
#   Enum.group_by([1, 2, 3, 4], fn n -> rem(n, 2) end)
#   # Returns %{0 => [2, 4], 1 => [1, 3]}
#
#   Enum.group_by(["hi", "hey", "yo"], fn w -> String.length(w) end)
#   # Returns %{2 => ["hi", "yo"], 3 => ["hey"]}
#
# The result is a map, so you can access groups by key:
#   groups = Enum.group_by([1, 2, 3], fn n -> rem(n, 2) end)
#   groups[0]  # [2]
#
# Your task:
# Group the numbers into :even and :odd groups
# (an if expression can return the right atom for each number)

numbers = [1, 2, 3, 4, 5, 6]

groups = Enum.group_by(numbers, ???)  # Return :even or :odd for each number

IO.puts("Even: #{inspect(groups.even)}")
IO.puts("Odd: #{inspect(groups.odd)}")
