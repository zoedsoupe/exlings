# Funções
#
# Funções são blocos de código reutilizáveis que realizam tarefas específicas.
# Em Elixir, funções são cidadãs de primeira classe e vivem dentro de módulos!
#
# O que são funções?
# - Blocos de código nomeados que podem ser chamados
# - Recebem entradas (argumentos) e retornam saídas
# - Devem ser definidas dentro de módulos
# - Usam a palavra-chave def
#
# Sintaxe básica de função:
#   defmodule MyModule do
#     def function_name(arg1, arg2) do
#       # corpo da função
#       # a última expressão é o valor de retorno
#     end
#   end
#
# Importante: funções em Elixir retornam a última expressão automaticamente!
# Não precisa de palavra-chave "return".
#
# Chamando funções:
#   MyModule.function_name(value1, value2)
#
# Exemplos:
#   defmodule Math do
#     def add(a, b) do
#       a + b
#     end
#   end
#
#   Math.add(5, 3)  # Retorna 8
#
# Sua tarefa:
# Complete a função multiply para retornar o produto de a e b

defmodule Math do
  def multiply(a, b) do
    ???
  end
end

result = Math.multiply(6, 7)
IO.puts("6 * 7 = #{result}")
