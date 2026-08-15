# Múltiplos Casos Base
#
# Algumas funções recursivas precisam de MAIS DE UM caso base.
# A sequência de Fibonacci é o exemplo clássico.
#
# Números de Fibonacci:
#   fib(0) = 0
#   fib(1) = 1
#   fib(n) = fib(n - 1) + fib(n - 2)
#
# Cada número é a soma dos dois anteriores:
#   0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, ...
#
# Por que dois casos base? fib(n) depende dos DOIS valores anteriores.
# Se parássemos apenas no 0, fib(1) tentaria fib(0) + fib(-1) e
# recursaria em números negativos para sempre!
#
# Com múltiplas cláusulas, cada caso base é simplesmente sua própria cláusula:
#   def fib(0), do: 0  # primeiro caso base
#   def fib(1), do: 1  # segundo caso base
#
# Sua tarefa:
# Preencha os dois casos base da função Fibonacci

defmodule Fib do
  def fib(0), do: ???
  def fib(1), do: ???

  def fib(n) do
    fib(n - 1) + fib(n - 2)
  end
end

IO.puts("fib(10) = #{Fib.fib(10)}")
