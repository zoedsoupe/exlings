# Alias
#
# Long module names get tiring to type:
#
#   Fruit.Store.Inventory.count(["apple", "banana"])
#
# alias creates a shortcut. By default it uses the LAST segment
# of the module name:
#
#   alias Fruit.Store.Inventory
#
#   Inventory.count(["apple", "banana"])   # same call!
#
# You can also pick your own name with :as :
#
#   alias Fruit.Store.Inventory, as: Inv
#
#   Inv.count(["apple", "banana"])
#
# Things to know:
# - alias is resolved at COMPILE TIME: it just rewrites the name.
#   It does not load or import any code by itself.
# - Because it is only a name rewrite, aliasing a module defined
#   in this same script file works fine.
# - In real projects, alias usually goes at the top of the module
#   that needs the shortcut.
#
# Your task:
# 1. Complete the count/1 call using the default alias
# 2. Complete the first/1 call using the custom alias

defmodule Fruit.Store.Inventory do
  def count(items), do: length(items)
  def first([head | _rest]), do: head
end

alias Fruit.Store.Inventory

items = ["apple", "banana", "cherry"]

IO.puts("Items: #{???.count(items)}")

alias Fruit.Store.Inventory, as: Inv

IO.puts("First: #{???.first(items)}")

# Try this: alias String, as: S and call S.upcase("elixir").
