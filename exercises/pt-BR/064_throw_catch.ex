# Throw e Catch
#
# throw/catch NÃO é para erros. É um retorno não-local: uma forma de
# pular para fora de código profundamente aninhado no momento em que
# você tem o que precisa. Erros usam tuplas de erro ou raise/rescue;
# saídas antecipadas carregando um VALOR usam throw/catch.
#
#   try do
#     throw(:done)
#     IO.puts("never runs")
#   catch
#     :done -> "we jumped out"
#   end
#
# throw pode carregar qualquer valor, e catch casa padrões com ele:
#
#   try do
#     throw({:found, 42})
#   catch
#     {:found, n} -> n
#   end
#
# Caso de uso clássico: buscar em dados aninhados e parar assim que
# a resposta aparece, sem percorrer o resto da estrutura:
#
#   try do
#     for row <- grid, cell <- row do
#       if cell == :treasure, do: throw({:found, cell})
#     end
#     :not_found
#   catch
#     {:found, item} -> item
#   end
#
# Se nada for lançado, a expressão try simplesmente retorna o valor
# do corpo (:not_found acima).
#
# Sua tarefa:
# Complete a busca abaixo: quando o número 7 for encontrado, lance
# uma tupla que a cláusula de catch consiga casar. O catch já está
# escrito -- leia-o para descobrir o formato esperado.

grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

result =
  try do
    for row <- grid, n <- row do
      if n == 7, do: throw(???)
    end

    :not_found
  catch
    {:found, n} -> n
  end

IO.puts("Search result: #{result}")
