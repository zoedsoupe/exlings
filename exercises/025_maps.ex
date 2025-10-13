# Maps
#
# Maps are key-value data structures. They're like dictionaries in Python
# or objects in JavaScript - perfect for storing related data!
#
# What are maps?
# - Key-value pairs: %{key => value}
# - Keys can be any type (atoms, strings, numbers, etc.)
# - Very efficient for looking up values by key
# - Commonly used for structured data
#
# Creating maps:
#   %{"name" => "Alice", "age" => 30}
#   %{:status => :ok, :data => [1, 2, 3]}
#
# When keys are atoms, there's a shorthand syntax:
#   %{name: "Alice", age: 30}
#   # Same as: %{:name => "Alice", :age => 30}
#
# Accessing values:
#   user = %{name: "Alice", age: 30}
#   user[:name]     # "Alice" (works for any key type)
#   user.name       # "Alice" (only for atom keys!)
#
# Updating maps (immutable!):
#   user = %{name: "Alice", age: 30}
#   updated = %{user | age: 31}  # Returns NEW map
#
# Pattern matching with maps:
#   %{name: name, age: age} = user
#   # Extract values
#
#   %{name: name} = user
#   # Extract just the name, ignore other fields
#
# Your task:
# Create a map representing a person with name and age fields
# Use atom keys with the shorthand syntax

person = ???  # Create a map with atom keys: %{name: "Bob", age: 25}

# Access the values
name = person.name
age = person[:age]

IO.puts("Name: #{name}, Age: #{age}")
