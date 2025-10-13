# Guards allow you to add conditions to function clauses using 'when'.
#
# Complete the classify function with guards:

defmodule Number do
  def classify(n) when ??? do  # n > 0
    "positive"
  end

  def classify(n) when ??? do  # n < 0
    "negative"
  end

  def classify(0) do
    "zero"
  end
end

IO.puts(Number.classify(5))
IO.puts(Number.classify(-3))
IO.puts(Number.classify(0))
