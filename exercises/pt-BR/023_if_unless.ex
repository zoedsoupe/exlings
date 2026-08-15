# If e Unless
#
# Elixir tem if e unless para lógica condicional simples. Eles são
# mais simples que case/cond, mas menos usados em Elixir idiomático.
#
# A expressão if:
# - Verifica uma única condição
# - Tem uma cláusula else opcional
# - Retorna um valor (tudo é uma expressão!)
#
# Sintaxe:
#   if condition do
#     true_result
#   else
#     false_result
#   end
#
# Exemplo:
#   if temperature > 30 do
#     "It's hot!"
#   else
#     "It's not hot"
#   end
#
# A expressão unless:
# - O oposto do if
# - Executa quando a condição é falsa
# - Boa para condições negativas
# - Também tem uma cláusula else opcional
#
# Sintaxe:
#   unless condition do
#     result_when_false
#   else
#     result_when_true
#   end
#
# Exemplo:
#   unless user_logged_in? do
#     redirect_to_login()
#   end
#
# Exemplo com else:
#   unless user_logged_in? do
#     "Please log in"
#   else
#     "Welcome!"
#   end
#
# Verdade e falsidade em Elixir:
# - false e nil são falsy
# - TUDO o resto é truthy (incluindo 0, "", e [])
#
# Quando usar if/unless?
# - Verificações simples de verdadeiro/falso
# - Uma ou duas condições
# - Mas prefira casamento de padrão quando possível!
#
# Sua tarefa:
# Complete as expressões if e unless

defmodule Checker do
  def check_positive(n) do
    if ??? do  # Verifique se n > 0
      "positive"
    else
      "not positive"
    end
  end

  def warn_if_negative(n) do
    unless ??? do  # Verifique se n >= 0
      "Warning: negative number!"
    else
      "ok"
    end
  end
end

IO.puts(Checker.check_positive(5))
IO.puts(Checker.check_positive(-3))
IO.puts(Checker.warn_if_negative(-1))
IO.puts(Checker.warn_if_negative(10))
