# The With Statement
#
# Chaining functions that return {:ok, value} / {:error, reason}
# with case nests deeply and fast:
#
#   case parse(input) do
#     {:ok, n} ->
#       case positive(n) do
#         {:ok, n} -> {:ok, n * 2}
#         error -> error
#       end
#     error -> error
#   end
#
# `with` flattens this. Each step pattern-matches with <-. When the
# match succeeds, the value is bound and the next step runs. When
# it FAILS, `with` stops and returns the unmatched value:
#
#   with {:ok, n} <- parse(input),
#        {:ok, n} <- positive(n) do
#     {:ok, n * 2}
#   end
#
# An else clause handles the non-matching values yourself, with
# pattern matching again:
#
#   with {:ok, n} <- parse(input),
#        {:ok, n} <- positive(n) do
#     {:ok, n * 2}
#   else
#     {:error, :not_a_number} -> "please type digits"
#     {:error, :not_positive} -> "number must be positive"
#   end
#
# Your task:
# Three pipeline steps are ready: parse a string, check it is
# positive, double it. Fill in the last step's pattern so the
# doubled value gets bound, and complete the else clause for the
# :not_positive error.

defmodule Pipeline do
  def parse(input) do
    case Integer.parse(input) do
      {n, ""} -> {:ok, n}
      _ -> {:error, :not_a_number}
    end
  end

  def positive(n) when n > 0, do: {:ok, n}
  def positive(_), do: {:error, :not_positive}

  def double(n), do: {:ok, n * 2}
end

run = fn input ->
  with {:ok, n} <- Pipeline.parse(input),
       {:ok, n} <- Pipeline.positive(n),
       {:ok, ???} <- Pipeline.double(n) do
    "Result: #{doubled}"
  else
    {:error, :not_a_number} -> "Error: not a number"
    {:error, ???} -> "Error: not positive"
  end
end

IO.puts(run.("21"))
IO.puts(run.("abc"))
IO.puts(run.("-5"))
