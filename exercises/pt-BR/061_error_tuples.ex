# Tuplas de Erro
#
# Elixir não tem null e raramente levanta exceções para falhas
# esperadas. Em vez disso, funções que podem falhar retornam uma
# tupla marcada:
#
#   {:ok, result}     -- tudo funcionou, aqui está o valor
#   {:error, reason}  -- algo deu errado, aqui está o motivo
#
# Você vê essa convenção por toda a biblioteca padrão:
#
#   File.read("README.md")   # => {:ok, "# exlings..."}
#   File.read("nope.txt")    # => {:error, :enoent}
#   Integer.parse("42")      # => {42, ""}
#   Integer.parse("abc")     # => :error
#
# Quem chama trata os dois resultados com pattern matching, geralmente
# dentro de uma expressão case:
#
#   case File.read("data.txt") do
#     {:ok, content}   -> "got #{byte_size(content)} bytes"
#     {:error, reason} -> "failed: #{reason}"
#   end
#
# Escrever uma função que retorna tuplas de erro é simples: retorne
# {:ok, value} no caminho feliz e {:error, reason} quando a entrada
# for inválida. Múltiplas cláusulas de função tornam isso natural,
# porque você pode casar com a entrada ruim diretamente:
#
#   def divide(_, 0), do: {:error, "division by zero"}
#   def divide(a, b), do: {:ok, div(a, b)}
#
# Sua tarefa:
# Complete as cláusulas de Math.divide/2 abaixo. Ela deve retornar
# {:error, "division by zero"} quando o divisor for 0, e
# {:ok, result} caso contrário. Quem chama já está escrito.

defmodule Math do
  def divide(_, ???), do: {:error, "division by zero"}
  def divide(a, b), do: {:ok, ???}
end

case Math.divide(10, 2) do
  {:ok, result} -> IO.puts("10 / 2 = #{result}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end

case Math.divide(10, 0) do
  {:ok, result} -> IO.puts("10 / 0 = #{result}")
  {:error, reason} -> IO.puts("Error: #{reason}")
end
