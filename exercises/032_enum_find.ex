# Enum.find
#
# Enum.find/2 searches a list for the FIRST element that matches
# a condition. It returns the element itself, or nil if nothing matches.
#
# What is Enum.find?
# - Takes a list and a predicate function (returns true/false)
# - Returns the first element where the function returns true
# - Returns nil when no element matches
# - Stops at the first match (efficient!)
#
# Syntax:
#   Enum.find(list, fn element -> condition end)
#
# Examples:
#   Enum.find([1, 5, 10, 20], fn n -> n > 6 end)
#   # Returns 10 (the FIRST match, not all matches)
#
#   Enum.find([1, 2, 3], fn n -> n > 100 end)
#   # Returns nil (nothing matched)
#
# Enum.find vs Enum.filter:
# - Enum.find returns ONE element (or nil)
# - Enum.filter returns ALL matching elements in a list
#
# Your task:
# Find the first number greater than 10, then search for a
# number greater than 100 (there is none!)

numbers = [3, 7, 12, 25, 40]

found = Enum.find(numbers, ???)    # First number greater than 10
missing = Enum.find(numbers, ???)  # First number greater than 100

IO.puts("Found: #{found}")
IO.puts("Missing: #{inspect(missing)}")
