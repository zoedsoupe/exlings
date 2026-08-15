# Enum.filter
#
# Enum.filter/2 mantém apenas os elementos que satisfazem uma condição.
# A função que você passa deve retornar true (mantém) ou false (descarta).
#
# O que é Enum.filter?
# - Recebe uma lista e uma função predicado (retorna true/false)
# - Retorna uma NOVA lista só com os elementos que combinaram
# - Elementos para os quais a função retorna false ficam de fora
#
# Sintaxe:
#   Enum.filter(list, fn element -> condition end)
#
# Exemplos:
#   Enum.filter([1, 2, 3, 4], fn n -> n > 2 end)
#   # Retorna [3, 4]
#
#   Enum.filter([1, 2, 3, 4], fn n -> rem(n, 2) == 0 end)
#   # Retorna [2, 4] (apenas números pares)
#
# Lembre-se: rem(n, 2) == 0 verifica se um número é par!
#
# Sua tarefa:
# Filtre a lista para manter apenas os números pares, depois apenas as palavras longas

numbers = [1, 2, 3, 4, 5, 6, 7, 8]
evens = Enum.filter(numbers, ???)  # Mantenha apenas os números pares

words = ["hi", "elixir", "hey", "erlang"]
long_words = Enum.filter(words, ???)  # Mantenha palavras com mais de 3 letras

IO.puts("Evens: #{inspect(evens)}")
IO.puts("Long words: #{inspect(long_words)}")
