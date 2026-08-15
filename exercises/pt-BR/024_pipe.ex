# O Pipe Operator
#
# O pipe operator |> é um dos recursos mais amados do Elixir!
# Ele permite encadear chamadas de função de forma legível, da esquerda para a direita.
#
# O que é o pipe operator?
# - Pega o resultado do lado esquerdo
# - Passa como PRIMEIRO argumento para a função da direita
# - Torna chamadas de função aninhadas legíveis
# - Leia o código como um pipeline de transformações
#
# Sem pipe:
#   String.upcase(String.trim("  hello  "))
#   # Difícil de ler: de dentro para fora
#
# Com pipe:
#   "  hello  "
#   |> String.trim()
#   |> String.upcase()
#   # Fácil de ler: de cima para baixo, da esquerda para a direita
#
# Como funciona:
#   value |> function()  vira  function(value)
#   value |> function(arg2)  vira  function(value, arg2)
#
# Exemplos:
#   "hello" |> String.upcase()
#   # Igual a: String.upcase("hello")
#
#   [1, 2, 3] |> Enum.map(&(&1 * 2)) |> Enum.sum()
#   # Igual a: Enum.sum(Enum.map([1, 2, 3], &(&1 * 2)))
#
# Por que usar pipes?
# - Muito mais legível
# - Mostra o fluxo das transformações de dados
# - Muito comum em código Elixir
# - Deixa operações complexas claras
#
# Sua tarefa:
# Complete a cadeia de pipes para transformar a string

result =
  "  elixir is awesome  "
  |> String.trim()
  |> ???()              # Deixe em maiúsculas
  |> String.replace("AWESOME", "AMAZING")

IO.puts(result)
