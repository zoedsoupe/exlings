# Expressões Cond
#
# A expressão cond é como uma sequência de if-else. Ela
# avalia as condições de cima para baixo e executa a primeira que for verdadeira.
#
# O que é cond?
# - Verifica múltiplas condições
# - Executa a primeira cláusula que for verdadeira
# - Deve ter pelo menos uma cláusula verdadeira (geralmente usamos true como coringa)
# - Retorna o resultado da cláusula que combinou
#
# Sintaxe:
#   cond do
#     condition1 -> result1
#     condition2 -> result2
#     true -> default_result
#   end
#
# Exemplo:
#   cond do
#     temperature > 30 -> "Hot!"
#     temperature > 20 -> "Warm"
#     temperature > 10 -> "Cool"
#     true -> "Cold!"
#   end
#
# Quando usar cond?
# - Quando há várias condições para verificar (não apenas casamento de padrão)
# - Para verificar diferentes expressões booleanas
# - É como cadeias de if-else em outras linguagens
#
# Importante: pelo menos uma cláusula deve ser verdadeira, senão você terá um erro
# em tempo de execução! É por isso que costumamos usar 'true' como última cláusula.
#
# Case vs Cond:
# - case: faz casamento de padrão com um valor
# - cond: verifica múltiplas condições booleanas
#
# Sua tarefa:
# Complete o cond para classificar idades em categorias

defmodule AgeClassifier do
  def classify(age) do
    cond do
      age < 13 -> ???  # Deve retornar "child"
      age < 20 -> ???  # Deve retornar "teenager"
      age < 60 -> ???  # Deve retornar "adult"
      true -> ???      # Deve retornar "senior"
    end
  end
end

IO.puts(AgeClassifier.classify(10))
IO.puts(AgeClassifier.classify(16))
IO.puts(AgeClassifier.classify(35))
IO.puts(AgeClassifier.classify(70))
