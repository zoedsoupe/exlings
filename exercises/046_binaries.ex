# Binaries and Bitstrings
#
# A binary is a raw sequence of bytes, written with <<>>:
#
#   <<1, 2, 3>>       # three bytes: 1, 2 and 3
#   <<104, 101>>      # two bytes
#
# Here is the surprise: Elixir strings ARE binaries! Each character
# is stored as its UTF-8 byte(s):
#
#   "hello" == <<104, 101, 108, 108, 111>>  # true!
#   <<104, 101, 108, 108, 111>>             # prints as "hello"
#
# You can pattern match on binaries, just like lists or tuples:
#
#   <<first, rest::binary>> = "hi"
#   first  # 104 (the byte for "h")
#   rest   # "i" (the remaining binary)
#
# The ::binary marker says "grab all the remaining bytes as a
# binary". Without a marker, each segment matches a single byte.
#
# Your task:
# Pattern match on the greeting to extract the first byte, the
# second byte, and the rest of the string

greeting = "hello"

<<first, second, rest::binary>> = ???  # Match against the greeting

IO.puts("First byte: #{first}")
IO.puts("Second byte: #{second}")
IO.puts("Rest: #{rest}")
