# Expressões Case
#
# A expressão case permite comparar um valor com vários padrões.
# Pense nela como casamento de padrão com múltiplas opções!
#
# O que é case?
# - Compara um valor com padrões
# - Executa o código do primeiro padrão que combina
# - Retorna o resultado da cláusula que combinou
# - Deve cobrir todos os casos possíveis (ou usar um padrão coringa)
#
# Sintaxe:
#   case value do
#     pattern1 -> result1
#     pattern2 -> result2
#     _ -> default_result
#   end
#
# Exemplo:
#   case File.read("data.txt") do
#     {:ok, content} -> "File content: #{content}"
#     {:error, reason} -> "Error: #{reason}"
#   end
#
# Case vs cláusulas de função:
# - Cláusulas de função: múltiplas definições da mesma função
# - Case: casamento de padrão dentro de uma única função
#
# Usando guards no case:
#   case number do
#     n when n > 0 -> "positive"
#     n when n < 0 -> "negative"
#     0 -> "zero"
#   end
#
# O padrão coringa:
# Use _ para combinar com qualquer coisa (como um caso padrão)
#
# Sua tarefa:
# Complete a expressão case para tratar as tuplas :ok e :error

defmodule Handler do
  def handle(result) do
    case result do
      {:ok, ???} -> "Success: #{value}"
      {:error, ???} -> "Error: #{reason}"
    end
  end
end

IO.puts(Handler.handle({:ok, "data loaded"}))
IO.puts(Handler.handle({:error, "connection failed"}))
