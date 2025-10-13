# Structs
#
# Now that you know about maps, let's learn about structs!
# Structs are Elixir's way of creating custom data types with named
# fields. They're built on top of maps and provide compile-time guarantees!
#
# What are structs?
# - Custom data types with defined fields
# - Defined inside modules using defstruct
# - Like maps but with fixed keys and default values
# - Provide compile-time checks (catch typos!)
#
# Defining a struct:
#   defmodule User do
#     defstruct name: "", age: 0, email: nil
#   end
#
# Creating struct instances:
#   user = %User{name: "Alice", age: 30}
#   # Unspecified fields get default values (email: nil)
#
# Accessing fields (like maps with atom keys):
#   user.name   # "Alice"
#   user.age    # 30
#
# Updating structs (they're immutable!):
#   updated = %{user | age: 31}
#   # Returns a NEW struct with age changed
#
# Pattern matching with structs:
#   %User{name: name, age: age} = user
#   # Extract fields
#
#   def greet(%User{name: name}), do: "Hello, #{name}!"
#   # Match in function parameters
#
# Why structs instead of maps?
# - Type safety: Can't accidentally use wrong keys
# - Documentation: Fields are clearly defined
# - Pattern matching: Can match on struct type
# - Better for domain data modeling
#
# Your task:
# 1. Define a Point struct with x and y fields (default to 0)
# 2. Create a point with x: 10, y: 20
# 3. Use pattern matching to extract the coordinates

defmodule Point do
  defstruct ???  # Define x and y fields with default value 0
end

# Create a point
point = ???

# Extract coordinates using pattern matching
%Point{???: x, ???: y} = point

IO.puts("Point coordinates: x=#{x}, y=#{y}")
