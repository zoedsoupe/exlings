# Casamento de Padrão com Listas
#
# Listas têm uma sintaxe especial de casamento de padrão que é super útil!
# Você pode dividir uma lista em head (primeiro elemento) e tail (o resto).
#
# A sintaxe [head | tail]:
# - head - o primeiro elemento
# - tail - uma lista com os elementos restantes
# - | (pipe) - separa o head do tail
#
# Exemplos:
#   [first | rest] = [1, 2, 3, 4]
#   # first é 1
#   # rest é [2, 3, 4]
#
#   [a | b] = [5]
#   # a é 5
#   # b é [] (lista vazia)
#
# Você pode combinar vários elementos:
#   [a, b | rest] = [1, 2, 3, 4, 5]
#   # a é 1, b é 2, rest é [3, 4, 5]
#
# Por que isso é útil?
# - Processar listas um elemento por vez
# - Essencial para recursão (vem mais adiante!)
# - Padrão muito comum em código Elixir
#
# Sua tarefa:
# Use casamento de padrão para extrair o primeiro elemento e o resto

[first | rest] = ???  # Deve combinar com [1, 2, 3, 4]

IO.puts("First: #{first}")
IO.puts("Rest: #{inspect(rest)}")
