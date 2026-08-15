# Raise and Rescue
#
# Exceptions are for EXCEPTIONAL situations: things that should not
# happen during normal operation. You raise one with raise/1 or
# raise/2:
#
#   raise "something went wrong"   # raises a RuntimeError
#   raise ArgumentError, "expected a positive number"
#
# To catch an exception, wrap the dangerous code in try/rescue:
#
#   try do
#     raise "boom"
#   rescue
#     e in RuntimeError -> "caught: #{e.message}"
#   end
#
# rescue matches on the exception TYPE with `e in ModuleName`. The
# exception is a struct, and e.message holds the message. Types you
# do not list keep crashing up to the caller:
#
#   try do
#     raise ArgumentError, "bad input"
#   rescue
#     e in ArgumentError -> "argument problem: #{e.message}"
#     e in RuntimeError  -> "runtime problem: #{e.message}"
#   end
#
# A word on philosophy: Elixir favors "let it crash". Processes are
# isolated and supervised, so crashing is often the RIGHT choice --
# a supervisor restarts the failed process in a clean state. Use
# rescue only when YOU can do something useful with the failure
# right here: turn it into a friendly message, fall back to a
# default, retry. Never rescue just to hide a bug.
#
# Your task:
# Parser.parse_positive/1 raises ArgumentError for non-positive
# input. Complete the rescue clause so the program prints a
# friendly message instead of crashing.

defmodule Parser do
  def parse_positive(n) when n > 0, do: n
  def parse_positive(n), do: raise(ArgumentError, "expected a positive number, got: #{n}")
end

IO.puts("Parsed: #{Parser.parse_positive(42)}")

message =
  try do
    Parser.parse_positive(-5)
  rescue
    e in ??? -> "Rescued: #{e.message}"
  end

IO.puts(message)
