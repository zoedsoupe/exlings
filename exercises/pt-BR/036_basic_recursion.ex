# Recursão Básica
#
# Recursão é quando uma função chama a si mesma. Elixir não tem laços
# como "for" ou "while" de outras linguagens. Recursão é como
# repetimos trabalho!
#
# Toda função recursiva precisa de duas coisas:
# - Um caso base: quando PARAR (evita recursão infinita)
# - Um caso recursivo: a função chama a si mesma com uma entrada menor
#
# Sem um caso base, a função chama a si mesma para sempre e o
# programa quebra!
#
# Exemplo, uma função que faz contagem regressiva:
#   def countdown(0), do: IO.puts("Blast off!")  # caso base
#
#   def countdown(n) do                          # caso recursivo
#     IO.puts(n)
#     countdown(n - 1)
#   end
#
# Como countdown(3) executa:
#   imprime 3, chama countdown(2)
#   imprime 2, chama countdown(1)
#   imprime 1, chama countdown(0)
#   corresponde ao caso base, imprime "Blast off!", fim!
#
# Sua tarefa:
# Complete a chamada recursiva para que a contagem chegue ao caso base

defmodule Counter do
  # Caso base: para quando n é 0
  def countdown(0), do: IO.puts("Blast off!")

  # Caso recursivo: imprime n, depois continua a contagem
  def countdown(n) do
    IO.puts(n)
    countdown(???)  # Chama countdown com um valor mais próximo de 0
  end
end

Counter.countdown(3)
