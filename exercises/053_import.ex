# Import
#
# import goes one step further than alias: it lets you call a
# module's FUNCTIONS without any module prefix at all:
#
#   import String
#
#   upcase("elixir")     # same as String.upcase("elixir")
#
# Importing everything is rarely a good idea: it becomes unclear
# where each function comes from. Prefer listing exactly what you
# need with :only :
#
#   import String, only: [upcase: 1]
#
# The 1 is the arity (number of arguments). upcase/1 and upcase/2
# are different functions and are imported separately.
#
# import vs require:
# - import brings FUNCTIONS (and macros) into scope
# - require only allows a module's MACROS to be used, and is
#   usually combined with import
#
# A note about scripts:
# Elixir compiles a whole script file at once, so a module defined
# in the same script cannot be imported at the top level of that
# script (it fails to compile). In real projects each module lives
# in its own file, so this never comes up. Here we import from the
# standard library instead: the concept is exactly the same.
#
# Your task:
# Call the imported String functions WITHOUT the String. prefix.

import String, only: [upcase: 1, pad_leading: 2]

shout = ???("beam")
padded = ???("42", 5)

IO.puts(shout)
IO.puts(padded)

# Try this: import Integer and call is_even(4) and is_odd(4).
