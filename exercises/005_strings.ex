# Strings
#
# Strings are sequences of characters used to represent text.
# In Elixir, strings are always written in double quotes.
#
# String basics:
# - Written in double quotes: "hello"
# - Can contain any text, including special characters
# - Strings in Elixir are UTF-8 encoded (they support international characters!)
#
# Examples:
#   greeting = "Hello"
#   emoji = "👋"
#   sentence = "Learning Elixir is fun!"
#
# String concatenation (joining strings together):
# - Use the <> operator to join strings
# - Example: "Hello" <> " " <> "World" gives "Hello World"
#
# Important: You CANNOT use the + operator for strings in Elixir!
# That's only for numbers. Use <> instead.
#
# Your task:
# 1. Create a variable 'name' with your name as a string
# 2. Use <> to concatenate "Hello, " with your name and "!"

name = ???

greeting = "Hello, " ??? name ??? "!"

IO.puts(greeting)
