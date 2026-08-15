# Funções Privadas
#
# Toda função que você escreveu até agora foi definida com def,
# o que a torna PÚBLICA: qualquer um pode chamá-la de fora do
# módulo.
#
# defp define uma função PRIVADA: ela só pode ser chamada de
# DENTRO do mesmo módulo:
#
#   defmodule Counter do
#     def describe(list) do
#       "#{size(list)} elements"
#     end
#
#     defp size(list), do: length(list)
#   end
#
#   Counter.describe([1, 2, 3])   # "3 elements"
#   Counter.size([1, 2, 3])       # ERRO: size/1 é privada!
#
# Por que usar funções privadas?
# - Elas são detalhes de implementação: quem chama não deve
#   depender delas, então você pode mudá-las ou removê-las à
#   vontade
# - Mantêm a API pública do módulo pequena e clara
# - Helpers como formatadores e validadores são candidatos
#   clássicos
#
# Dentro do módulo, funções privadas são chamadas como qualquer
# outra: só o nome e os argumentos, sem prefixo de módulo.
#
# Sua tarefa:
# 1. Torne o helper total/1 privado com a palavra-chave certa
# 2. Preencha o corpo de item_count/1 para que retorne quantos
#    preços a lista tem

defmodule Receipt do
  def summary(prices) do
    "Total: $#{total(prices)} (#{item_count(prices)} items)"
  end

  # Este helper deve ser um detalhe de implementação
  ??? total(prices) do
    Enum.sum(prices)
  end

  defp item_count(prices) do
    ???
  end
end

IO.puts(Receipt.summary([10, 20, 30]))

# Tente isto: depois de resolver o exercício, chame
# Receipt.total([1, 2]) no fim do arquivo e leia a mensagem
# de erro.
