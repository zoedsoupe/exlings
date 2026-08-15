# O Padrão do Acumulador
#
# No exercício 037 a soma era construída na VOLTA: cada chamada
# esperava a próxima retornar, e então somava seu começo.
#
# Existe outro caminho: carregar um resultado parcial COM você como
# um argumento extra. Esse argumento é chamado de acumulador.
#
# O padrão usa uma função auxiliar com um parâmetro a mais:
#   def sum(list), do: do_sum(list, 0)     # começa o acc em 0
#
#   defp do_sum([], acc), do: acc          # terminou? retorna o acc
#
#   defp do_sum([head | tail], acc) do
#     do_sum(tail, acc + head)             # constrói o resultado AGORA
#   end
#
# Observações:
# - defp define uma função privada, só pode ser chamada dentro do módulo
# - A função pública dispara o processo com um valor inicial
# - O resultado é construído indo para a FRENTE, não na volta
#
# O mesmo padrão inverte uma lista:
#   def reverse(list), do: do_reverse(list, [])
#   defp do_reverse([], acc), do: acc
#   defp do_reverse([head | tail], acc), do: do_reverse(tail, [head | acc])
#
# Sua tarefa:
# Complete a atualização do acumulador para que cada começo seja somado ao acc

defmodule Accumulator do
  def sum(list), do: do_sum(list, 0)

  # Caso base: não sobrou nada, o acumulador É o resultado
  defp do_sum([], acc), do: acc

  # Caso recursivo: incorpora o começo ao acumulador e continua
  defp do_sum([head | tail], acc) do
    do_sum(tail, ???)
  end
end

IO.puts("Sum: #{Accumulator.sum([1, 2, 3, 4, 5])}")
