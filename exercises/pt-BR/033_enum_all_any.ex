# Enum.all? e Enum.any?
#
# Essas duas funções respondem perguntas de sim/não sobre uma lista
# inteira. Ambas recebem uma lista e uma função predicado, e retornam
# um booleano.
#
# Enum.all?/2 - TODOS os elementos satisfazem a condição?
#   Enum.all?([2, 4, 6], fn n -> rem(n, 2) == 0 end)
#   # true (todos são pares)
#
#   Enum.all?([2, 3, 6], fn n -> rem(n, 2) == 0 end)
#   # false (3 é ímpar)
#
# Enum.any?/2 - PELO MENOS UM elemento satisfaz a condição?
#   Enum.any?([1, 3, 4], fn n -> rem(n, 2) == 0 end)
#   # true (4 é par)
#
#   Enum.any?([1, 3, 5], fn n -> rem(n, 2) == 0 end)
#   # false (nenhum é par)
#
# Curiosidades sobre listas vazias:
# - Enum.all?([], ...) é sempre true (nada viola a condição)
# - Enum.any?([], ...) é sempre false (nada a satisfaz)
#
# Sua tarefa:
# Verifique se todos os números são positivos, e se algum número é negativo

numbers = [5, 3, 8, 1]

all_positive = Enum.all?(numbers, ???)  # Todo número é maior que 0?
any_negative = Enum.any?(numbers, ???)  # Existe algum número menor que 0?

IO.puts("All positive? #{all_positive}")
IO.puts("Any negative? #{any_negative}")
