# Compreensões Básicas
#
# Compreensões são uma sintaxe compacta para transformar enumeráveis.
# A forma especial "for" se lê quase como uma frase:
#
#   for n <- [1, 2, 3], do: n * 2
#   # Retorna [2, 4, 6]
#
# Leia assim: "para cada n vindo DA lista, FAÇA n * 2".
#
# A parte n <- list é chamada de gerador. Ela extrai cada elemento
# da lista, um de cada vez.
#
# Compreensão vs Enum.map:
#   Enum.map([1, 2, 3], fn n -> n * n end)
#   for n <- [1, 2, 3], do: n * n
#   # Ambos retornam [1, 4, 9]
#
# Compreensões fazem muito mais que map (filtros, múltiplos
# geradores, coletar em maps), como os próximos exercícios mostram.
#
# Sua tarefa:
# Use uma compreensão para elevar cada número ao quadrado

numbers = [1, 2, 3, 4, 5]

squares = for n <- numbers, do: ???

IO.puts("Squares: #{inspect(squares)}")
