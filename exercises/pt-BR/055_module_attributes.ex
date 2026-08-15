# Atributos de Módulo
#
# Módulos podem carregar VALORES nomeados, escritos com @name no
# topo do módulo:
#
#   defmodule Config do
#     @retries 3
#
#     def retries, do: @retries
#   end
#
#   Config.retries()   # 3
#
# Como funcionam:
# - O valor é definido quando o módulo COMPILA e lido em qualquer
#   lugar do corpo do módulo com @name, inclusive dentro de funções
# - Pense neles como CONSTANTES: configuração que nunca muda
#   enquanto o programa roda
# - Diferente do import (exercícios anteriores), atributos em um
#   módulo definido no mesmo arquivo de script funcionam sem
#   nenhuma ressalva
#
# Você já conheceu atributos especiais usados pelo próprio Elixir:
# - @moduledoc - documentação do módulo
# - @doc       - documentação de uma função
# - @behaviour - declara um behaviour que o módulo implementa
#
# Sua tarefa:
# Leia o atributo correto dentro de cada função abaixo.

defmodule GameConfig do
  @title "Star Runner"
  @max_lives 3

  def title, do: ???

  def max_lives, do: ???

  def welcome do
    "Welcome to #{@title}! Lives: #{@max_lives}"
  end
end

IO.puts(GameConfig.title())
IO.puts(GameConfig.max_lives())
IO.puts(GameConfig.welcome())

# Tente isto: adicione um atributo @genre e use-o em welcome/0.
