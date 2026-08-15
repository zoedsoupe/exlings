# The Regex Sigil (~r)
#
# A regular expression searches for patterns inside strings. In
# Elixir you build one with the ~r sigil:
#
#   ~r/\d+/    # a Regex struct matching one or more digits
#
# Why a sigil instead of a plain string? Backslashes! Inside a
# "..." string you would have to escape every backslash ("\\d+")
# and then call Regex.compile/1. With ~r, \d is just \d. The sigil
# also accepts other delimiters (~r{...}, ~r|...|) so a pattern
# full of / does not need escaping either.
#
# Three everyday ways to use a Regex:
#
#   "abc 123" =~ ~r/\d+/                    # true (substring match?)
#   Regex.run(~r/\d+/, "abc 123")           # ["123"] (first match)
#   Regex.run(~r/(\d+)/, "abc 123", capture: :all_but_first)
#
# Named captures pull pieces out of a match into a map. A group is
# written (?<name>pattern), and {n} repeats a class exactly n times:
#
#   re = ~r/(?<year>\d{4})-(?<month>\d{2})/
#   Regex.named_captures(re, "born in 1990-05")
#   # %{"year" => "1990", "month" => "05"}
#
# Your task:
# Complete the three patterns. Expected output:
#
#   Has digits: true
#   Order number: 42
#   Year: 2026, Month: 08

line = "order 42 ships on 2026-08-15"

# 1) does the line contain any digit?
IO.puts("Has digits: #{line =~ ~r/???/}")

# 2) capture the order number (the first run of digits)
[number] = Regex.run(~r/???/, line)
IO.puts("Order number: #{number}")

# 3) capture the year and month with named groups
%{"year" => year, "month" => month} = Regex.named_captures(~r/???/, line)
IO.puts("Year: #{year}, Month: #{month}")
