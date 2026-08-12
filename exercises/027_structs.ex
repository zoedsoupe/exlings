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
#   %User{name: name} = user
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
# A note about scripts:
# A struct can only be built with %Struct{} AFTER its module is compiled.
# Elixir compiles a whole script file at once, so %Point{} can't be used
# at the top level of the same file that defines Point. In real projects
# each module lives in its own file, so this never comes up. Here we use
# a constructor function, a common pattern, to create instances from
# inside the module.
#
# Since a struct IS a map underneath, you can also match its fields
# with a plain map pattern:
#   %{x: x, y: y} = point
#
# Your task:
# 1. Define a Point struct with x and y fields (default to 0)
# 2. Fill in the constructor to build a struct from x and y
# 3. Create a point with x: 10, y: 20
# 4. Use a map pattern to extract the coordinates

defmodule Point do
  defstruct ???  # Define x and y fields with default value 0

  # Constructor: builds a %Point{} from inside the module,
  # where the struct is already defined
  def new(x, y) do
    ???
  end
end

# Create a point using the constructor
point = ???

# Extract coordinates using a map pattern (structs are maps!)
%{???: x, ???: y} = point

IO.puts("Point coordinates: x=#{x}, y=#{y}")
