# Throw and Catch
#
# throw/catch is NOT for errors. It is a non-local return: a way to
# jump straight out of deeply nested code the moment you have what
# you need. Errors use error tuples or raise/rescue; early exits
# carrying a VALUE use throw/catch.
#
#   try do
#     throw(:done)
#     IO.puts("never runs")
#   catch
#     :done -> "we jumped out"
#   end
#
# throw can carry any value, and catch pattern-matches on it:
#
#   try do
#     throw({:found, 42})
#   catch
#     {:found, n} -> n
#   end
#
# Classic use case: searching nested data and stopping as soon as
# the answer appears, without walking the rest of the structure:
#
#   try do
#     for row <- grid, cell <- row do
#       if cell == :treasure, do: throw({:found, cell})
#     end
#     :not_found
#   catch
#     {:found, item} -> item
#   end
#
# If nothing is thrown, the try expression simply returns the
# body's value (:not_found above).
#
# Your task:
# Complete the search below: when the number 7 is found, throw a
# tuple that the catch clause can match. The catch is already
# written -- read it to learn the expected shape.

grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

result =
  try do
    for row <- grid, n <- row do
      if n == 7, do: throw(???)
    end

    :not_found
  catch
    {:found, n} -> n
  end

IO.puts("Search result: #{result}")
