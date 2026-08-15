# Filtros em Compreensões
#
# Compreensões podem filtrar e transformar em UMA expressão só.
# Adicione uma condição depois do gerador, antes do do:
#
#   for n <- [1, 2, 3, 4], n > 2, do: n * 10
#   # Retorna [30, 40]
#
# Leia assim: "para cada n na lista ONDE n > 2, faça n * 10".
#
# Essa única linha faz o trabalho de um filter mais um map:
#   [1, 2, 3, 4]
#   |> Enum.filter(fn n -> n > 2 end)
#   |> Enum.map(fn n -> n * 10 end)
#
# Elementos onde a condição é falsa são simplesmente pulados.
# Você também pode adicionar várias condições separadas por vírgula.
#
# Sua tarefa:
# Adicione um filtro para que só os quadrados dos números PARES
# sejam mantidos

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

even_squares = for n <- numbers, ???, do: n * n

IO.puts("Even squares: #{inspect(even_squares)}")
