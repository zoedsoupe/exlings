# Lists
#
# Lists are ordered collections that can grow and shrink.
# They're one of the most important data structures in Elixir!
#
# What are lists?
# - Written with square brackets: [1, 2, 3]
# - Can contain any type of values
# - Can mix types (but usually don't): [1, "hello", :ok]
# - Can grow and shrink dynamically
# - Linked lists (efficient for prepending)
#
# Examples:
#   numbers = [1, 2, 3, 4, 5]
#   names = ["Alice", "Bob", "Charlie"]
#   empty = []
#
# List operations you'll learn soon:
# - Adding elements to the front (very fast!)
# - Breaking lists apart (head and tail)
# - Iterating through lists
#
# Lists vs Tuples:
# - Lists [] - dynamic size, use for collections
# - Tuples {} - fixed size, use for grouped data
#
# Your task:
# Create the lists with the correct values

# Create a list with numbers 1, 2, 3
numbers = ???

# Create a list with strings "red", "green", "blue"
colors = ???

IO.puts("Numbers: #{inspect(numbers)}")
IO.puts("Colors: #{inspect(colors)}")
