# Keyword Lists
#
# Keyword lists are special lists where each element is a two-item tuple
# with an atom as the first element. They're very common in Elixir!
#
# What are keyword lists?
# - A list of {atom, value} tuples
# - Written with a special syntax: [key: value, key2: value2]
# - Can have duplicate keys
# - Order is preserved
# - Commonly used for function options
#
# Full syntax:
#   [{:name, "Alice"}, {:age, 30}]
#
# Shorthand syntax (more common):
#   [name: "Alice", age: 30]
#
# Why keyword lists?
# - Function options: String.split(text, trim: true)
# - Query parameters
# - Configuration
# - Any time you need ordered key-value pairs
#
# Accessing values:
#   config = [host: "localhost", port: 4000]
#   config[:host]        # "localhost"
#   Keyword.get(config, :port)  # 4000
#
# Keyword lists vs Maps:
# - Keyword lists: Ordered, can have duplicates, used for options
# - Maps: Unordered, unique keys, used for structured data
#
# Pattern matching:
#   [name: name, age: age] = [name: "Alice", age: 30]
#
# Common in function calls:
#   def connect(host, opts \\ []) do
#     port = Keyword.get(opts, :port, 80)
#     # ...
#   end
#
# Your task:
# Create a keyword list with database configuration

db_config = ???  # Create [host: "localhost", port: 5432, database: "myapp"]

host = db_config[:host]
port = db_config[:port]

IO.puts("Connecting to #{host}:#{port}")
