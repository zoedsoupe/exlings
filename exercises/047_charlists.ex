# Charlists vs Strings
#
# Elixir has TWO ways to write text, and they are very different
# under the hood:
#
#   ~c"hello"  # a charlist: a LIST of codepoints, [104, 101, 108, 108, 111]
#   "hello"    # a string: a UTF-8 BINARY
#
# Check for yourself:
#   is_list(~c"hello")    # true
#   is_binary("hello")    # true
#
# Older Elixir code (and Erlang!) writes charlists with single
# quotes: 'hello'. That syntax is deprecated now, use the ~c sigil
# instead. Sigils get their own exercises later on.
#
# When do you need charlists?
# - Calling Erlang libraries, which speak charlists
# - Almost never otherwise: use strings in your own Elixir code
#
# Converting between the two:
#   to_string(~c"hello")   # "hello"
#   to_charlist("hello")   # ~c"hello"
#
# Your task:
# Convert the charlist to a string, then convert it back

charlist = ~c"hello"

string = ???              # Convert the charlist to a string
back = to_charlist(???)   # Convert the string back to a charlist

IO.puts("String: #{string}")
IO.puts("Length: #{length(back)}")
IO.puts("Is list? #{is_list(charlist)}")
