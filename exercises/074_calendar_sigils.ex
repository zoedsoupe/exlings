# Calendar Sigils (~D, ~T, ~U and ~N)
#
# Elixir's calendar types (Date, Time, NaiveDateTime, DateTime) each
# have a sigil that builds the struct as a literal:
#
#   ~D[2026-08-15]           # a %Date{}      (year-month-day)
#   ~T[07:30:00]             # a %Time{}      (hour:minute:second)
#   ~N[2026-08-15 07:30:00]  # a %NaiveDateTime{} (no timezone)
#   ~U[2026-08-15 07:30:00Z] # a %DateTime{}  (Z = UTC offset)
#
# The sigil validates at compile time: ~D[2026-13-40] is an error
# BEFORE the program runs. The structs have fields you can read:
#
#   ~D[2026-08-15].year      # 2026
#   ~T[07:30:00].minute      # 30
#
# The Date module compares and does arithmetic on dates:
#
#   Date.compare(~D[2026-08-15], ~D[2026-01-01])  # :gt (:lt, :eq too)
#   Date.diff(~D[2026-08-15], ~D[2026-01-01])     # days between them
#   Date.add(~D[2026-08-15], 7)                   # ~D[2026-08-22]
#
# You can even invent your own sigils by defining functions like
# sigil_x/2. One catch: sigils expand at COMPILE time, so a sigil
# defined in a script cannot be used in that same script. In a
# project, you define it in one module and require/use it from
# another.
#
# Your task:
# Build the missing literals. Expected output:
#
#   Deadline: 2026-08-15
#   Compare: :gt
#   Days apart: 226
#   Alarm at: 07:30:00

start = ~D[2026-01-01]

# Build a %Date{} literal for 2026-08-15 with the date sigil
deadline = ???

IO.puts("Deadline: #{deadline}")
IO.puts("Compare: #{inspect(Date.compare(deadline, start))}")
IO.puts("Days apart: #{Date.diff(deadline, start)}")

# Build a %Time{} literal for 07:30:00 with the time sigil
alarm = ???

IO.puts("Alarm at: #{alarm}")
