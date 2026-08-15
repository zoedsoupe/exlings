# Múltiplos Geradores
#
# Uma compreensão pode ter mais de um gerador. Cada gerador extra
# multiplica as iterações: cada elemento da primeira lista é
# combinado com cada elemento da segunda.
#
# Isso é chamado de produto cartesiano:
#
#   for x <- [1, 2], y <- [:a, :b], do: {x, y}
#   # Retorna [{1, :a}, {1, :b}, {2, :a}, {2, :b}]
#
# Como funciona:
#   x = 1 combina com :a, depois com :b
#   x = 2 combina com :a, depois com :b
#
# Funciona como loops aninhados em outras linguagens, mas em uma
# linha só. Geradores podem ser listas, ranges, maps ou qualquer
# enumerável.
#
# Sua tarefa:
# Adicione o segundo gerador para que pairs contenha todas as
# combinações {x, y} das duas listas

xs = [1, 2, 3]
ys = [:a, :b]

pairs = for x <- xs, ???, do: {x, y}

IO.puts("Pairs: #{inspect(pairs)}")
