# Módulos Aninhados
#
# Módulos agrupam funções relacionadas. Conforme um projeto cresce,
# você pode aninhar módulos dentro de outros módulos para construir
# uma hierarquia de nomes:
#
#   defmodule Outer do
#     defmodule Inner do
#       def hello, do: "hi from Inner"
#     end
#   end
#
# De FORA, o nome completo do módulo interno usa pontos:
#
#   Outer.Inner.hello()   # "hi from Inner"
#
# Você também pode definir o mesmo aninhamento em uma linha, com
# pontos:
#
#   defmodule Outer.Inner do
#     def hello, do: "hi from Inner"
#   end
#
# As duas formas criam exatamente o mesmo módulo: Outer.Inner.
#
# Importante: o aninhamento é APENAS sobre nomes. Inner não ganha
# nenhum acesso especial às funções ou dados de Outer, e Outer não
# conhece Inner automaticamente. É só um nome mais longo.
#
# Sua tarefa:
# 1. Complete a chamada à função champion/0 do módulo aninhado
#    dentro de Arcade
# 2. Complete a definição do módulo com pontos para que
#    Arcade.Tokens exista

defmodule Arcade do
  def name, do: "Pixel Palace"

  defmodule HighScores do
    def top, do: [{"AAA", 9000}, {"BBB", 7500}]

    def champion do
      [{name, _score} | _rest] = top()
      name
    end
  end
end

# O mesmo aninhamento, escrito com pontos
defmodule Arcade.??? do
  def price, do: 2
end

IO.puts("Arcade: #{Arcade.name()}")
IO.puts("Champion: #{Arcade.???.champion()}")
IO.puts("Token price: #{Arcade.Tokens.price()}")

# Tente isto: aninhe mais um nível, como Arcade.Tokens.Machine,
# e chame uma função dele.
