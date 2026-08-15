# Guards
#
# Guards permitem adicionar condições às suas cláusulas de função usando 'when'.
# Elas são como filtros extras que tornam o casamento de padrão ainda mais poderoso!
#
# O que são guards?
# - Condições adicionais nas cláusulas de função
# - Usam a palavra-chave 'when'
# - Apenas certas expressões são permitidas (por segurança)
# - São verificadas depois do casamento de padrão
#
# Sintaxe básica:
#   def function(argument) when condition do
#     # corpo
#   end
#
# Exemplos:
#   def classify(n) when n > 0 do
#     "positive"
#   end
#
#   def classify(n) when n < 0 do
#     "negative"
#   end
#
#   def classify(0) do
#     "zero"
#   end
#
# Expressões comuns em guards:
# - Comparações: >, <, >=, <=, ==, !=
# - Verificações de tipo: is_integer, is_float, is_atom, is_list
# - Booleanos: and, or, not
# - Matemática: +, -, *, /
#
# Por que guards?
# - Tornam as cláusulas de função mais específicas
# - Código autodocumentado
# - Falham rápido com entrada inválida
#
# Sua tarefa:
# Complete as guards das cláusulas positive e negative

defmodule Number do
  def classify(n) when ??? do  # when n > 0
    "positive"
  end

  def classify(n) when ??? do  # when n < 0
    "negative"
  end

  def classify(0) do
    "zero"
  end
end

IO.puts(Number.classify(5))
IO.puts(Number.classify(-3))
IO.puts(Number.classify(0))
