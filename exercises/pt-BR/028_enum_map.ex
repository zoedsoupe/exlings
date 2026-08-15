# Enum.map
#
# O módulo Enum é o cavalo de batalha das coleções em Elixir!
# Enum.map/2 transforma cada elemento de uma lista em algo novo.
#
# O que é Enum.map?
# - Recebe uma lista e uma função
# - Aplica a função a CADA elemento
# - Retorna uma NOVA lista com os elementos transformados
# - A lista original não muda (imutabilidade!)
#
# Sintaxe:
#   Enum.map(list, fn element -> transformation end)
#
# Exemplos:
#   Enum.map([1, 2, 3], fn n -> n * 2 end)
#   # Retorna [2, 4, 6]
#
#   Enum.map(["a", "b"], fn s -> String.upcase(s) end)
#   # Retorna ["A", "B"]
#
# Com a sintaxe de captura (mais curta):
#   Enum.map([1, 2, 3], &(&1 * 2))
#   # Retorna [2, 4, 6]
#
# Sua tarefa:
# Use Enum.map para dobrar cada número e deixar cada palavra em maiúsculas

numbers = [1, 2, 3, 4]
doubled = Enum.map(numbers, ???)  # Dobre cada número

words = ["elixir", "is", "fun"]
shouted = Enum.map(words, ???)  # Deixe cada palavra em maiúsculas

IO.puts("Doubled: #{inspect(doubled)}")
IO.puts("Shouted: #{inspect(shouted)}")
