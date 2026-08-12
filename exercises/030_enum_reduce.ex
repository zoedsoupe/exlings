# Enum.reduce
#
# Enum.reduce/3 combines all elements of a list into a single value.
# It "folds" the list down, carrying an accumulator along the way.
#
# What is Enum.reduce?
# - Takes a list, a starting value (the accumulator), and a function
# - The function receives each element and the current accumulator
# - Whatever the function returns becomes the new accumulator
# - Returns the final accumulator
#
# Syntax:
#   Enum.reduce(list, initial_acc, fn element, acc -> new_acc end)
#
# How summing [1, 2, 3] with starting acc 0 works:
#   step 1: element 1, acc 0 -> returns 1
#   step 2: element 2, acc 1 -> returns 3
#   step 3: element 3, acc 3 -> returns 6
#   Final result: 6
#
# Examples:
#   Enum.reduce([1, 2, 3], 0, fn n, acc -> n + acc end)
#   # Returns 6
#
#   Enum.reduce([2, 3, 4], 1, fn n, acc -> n * acc end)
#   # Returns 24
#
# Your task:
# Use Enum.reduce to compute the sum and the product of the list

numbers = [1, 2, 3, 4, 5]

sum = Enum.reduce(numbers, 0, ???)      # Add each element to the accumulator
product = Enum.reduce(numbers, 1, ???)  # Multiply each element with the accumulator

IO.puts("Sum: #{sum}")
IO.puts("Product: #{product}")
