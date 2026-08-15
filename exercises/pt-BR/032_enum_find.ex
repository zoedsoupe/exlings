# Enum.find
#
# Enum.find/2 procura em uma lista o PRIMEIRO elemento que satisfaz
# uma condição. Ela retorna o próprio elemento, ou nil se nada corresponder.
#
# O que é Enum.find?
# - Recebe uma lista e uma função predicado (retorna true/false)
# - Retorna o primeiro elemento para o qual a função retorna true
# - Retorna nil quando nenhum elemento corresponde
# - Para na primeira correspondência (eficiente!)
#
# Sintaxe:
#   Enum.find(list, fn element -> condition end)
#
# Exemplos:
#   Enum.find([1, 5, 10, 20], fn n -> n > 6 end)
#   # Retorna 10 (a PRIMEIRA correspondência, não todas)
#
#   Enum.find([1, 2, 3], fn n -> n > 100 end)
#   # Retorna nil (nada correspondeu)
#
# Enum.find vs Enum.filter:
# - Enum.find retorna UM elemento (ou nil)
# - Enum.filter retorna TODOS os elementos correspondentes em uma lista
#
# Sua tarefa:
# Encontre o primeiro número maior que 10, depois procure um
# número maior que 100 (não existe nenhum!)

numbers = [3, 7, 12, 25, 40]

found = Enum.find(numbers, ???)    # Primeiro número maior que 10
missing = Enum.find(numbers, ???)  # Primeiro número maior que 100

IO.puts("Found: #{found}")
IO.puts("Missing: #{inspect(missing)}")
