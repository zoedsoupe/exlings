# Protocols: Polymorphism, Elixir Style
#
# You have already used protocols without knowing it! Every time you
# write "Hello, #{name}" or call to_string(42), Elixir asks: "how do
# I turn THIS kind of value into a string?" The answer lives in a
# PROTOCOL.
#
# A protocol is a contract that says: "any type that implements me
# provides these functions." Maps and structs are about DATA;
# protocols are about BEHAVIOUR shared across different types.
#
# Two protocols you use all the time:
#
# 1. String.Chars - converts a value to a human-readable string.
#    Used by to_string/1 and by "#{...}" interpolation. Implemented
#    for integers, floats, atoms, binaries...
#
#      to_string(42)      # "42"
#      to_string(:ok)     # "ok"
#      "n is #{42}"       # "n is 42"  (interpolation uses String.Chars)
#
# 2. Inspect - converts a value to its programmer-facing debug form.
#    Used by inspect/1 and IO.inspect/1. Implemented for (almost)
#    everything, including lists, maps and structs:
#
#      inspect([1, 2, 3])   # "[1, 2, 3]"
#      inspect(%{a: 1})     # "%{a: 1}"
#
# Why two protocols? Interpolation needs a NATURAL text form and
# refuses types that don't have one. Try it in IEx:
#
#    "#{[1, 2, 3]}"      # raises Protocol.UndefinedError!
#    to_string(%{a: 1})  # raises too: maps have no String.Chars
#
# Lists and maps are data structures, not text, so Elixir makes you
# ask for the debug view explicitly:
#
#    "list: #{inspect([1, 2, 3])}"   # "list: [1, 2, 3]"
#
# Your task:
# 1. Convert the integer to a string with to_string/1 so <> works
# 2. Interpolate the list using inspect/1 (raw interpolation raises!)
# 3. Interpolate the map the same way
#
# Expected output:
#   Number as string: 42
#   List: [1, 2, 3]
#   User: %{name: "exlings", level: 15}

number = 42
list = [1, 2, 3]
user = %{name: "exlings", level: 15}

IO.puts("Number as string: " <> ???)
IO.puts("List: #{???}")
IO.puts("User: #{???}")
