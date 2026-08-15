# Recursão em Listas
#
# Recursão e listas são melhores amigas em Elixir! Lembra do
# padrão [head | tail] do exercício 012? Ele permite que uma função
# recursiva processe uma lista um elemento por vez.
#
# O padrão:
# - Caso base: a lista vazia [] (nada mais a processar)
# - Caso recursivo: faça algo com o começo, recurse sobre o resto
#
# Exemplo, somando uma lista na mão:
#   def sum([]), do: 0
#
#   def sum([head | tail]) do
#     head + sum(tail)
#   end
#
# Como sum([1, 2, 3]) executa:
#   1 + sum([2, 3])
#   1 + (2 + sum([3]))
#   1 + (2 + (3 + sum([])))
#   1 + (2 + (3 + 0))
#   6
#
# Cada chamada soma seu começo ao resultado do RESTO da lista,
# até a lista ficar vazia.
#
# Sua tarefa:
# Complete a função sum: preencha o caso base e a
# chamada recursiva

defmodule MyList do
  # Caso base: qual é a soma de uma lista vazia?
  def sum([]), do: ???

  # Caso recursivo: o começo mais a soma do resto
  def sum([head | tail]) do
    head + sum(???)
  end
end

IO.puts("Sum: #{MyList.sum([1, 2, 3, 4, 5])}")
