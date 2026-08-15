# Alias
#
# Nomes longos de módulos cansam de digitar:
#
#   Fruit.Store.Inventory.count(["apple", "banana"])
#
# alias cria um atalho. Por padrão ele usa o ÚLTIMO segmento
# do nome do módulo:
#
#   alias Fruit.Store.Inventory
#
#   Inventory.count(["apple", "banana"])   # mesma chamada!
#
# Você também pode escolher seu próprio nome com :as :
#
#   alias Fruit.Store.Inventory, as: Inv
#
#   Inv.count(["apple", "banana"])
#
# Coisas para saber:
# - alias é resolvido em TEMPO DE COMPILAÇÃO: ele só reescreve o
#   nome. Não carrega nem importa nenhum código por si só.
# - Por ser apenas uma reescrita de nome, dar alias em um módulo
#   definido neste mesmo arquivo de script funciona sem problema.
# - Em projetos reais, o alias geralmente fica no topo do módulo
#   que precisa do atalho.
#
# Sua tarefa:
# 1. Complete a chamada a count/1 usando o alias padrão
# 2. Complete a chamada a first/1 usando o alias personalizado

defmodule Fruit.Store.Inventory do
  def count(items), do: length(items)
  def first([head | _rest]), do: head
end

alias Fruit.Store.Inventory

items = ["apple", "banana", "cherry"]

IO.puts("Items: #{???.count(items)}")

alias Fruit.Store.Inventory, as: Inv

IO.puts("First: #{???.first(items)}")

# Tente isto: alias String, as: S e chame S.upcase("elixir").
