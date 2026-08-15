# Introdução ao ExUnit
#
# ExUnit é o framework de testes embutido do Elixir. Um arquivo de
# teste precisa de três ingredientes:
#
# 1. ExUnit.start() inicializa o framework (uma vez por arquivo).
# 2. Um módulo que faz `use ExUnit.Case` para ganhar as macros de teste.
# 3. Testes escritos com test/3 e verificados com assert e refute:
#
#      ExUnit.start()
#
#      defmodule MathTest do
#        use ExUnit.Case
#
#        test "addition works" do
#          assert 1 + 1 == 2     # passa se a expressão for truthy
#          refute 1 + 1 == 3     # passa se a expressão for falsy
#        end
#      end
#
# Quando você roda este arquivo com `elixir`, os testes executam
# quando o script termina. Cada teste que passa imprime um ponto;
# falhas imprimem um relatório detalhado com o que era esperado e o
# que realmente aconteceu, e o processo sai com status diferente de
# zero.
#
# assert/1 aceita qualquer expressão, mas assert actual == expected
# é especial: em caso de falha ele mostra OS DOIS lados da comparação.
#
# Sua tarefa:
# Os testes abaixo já passam... assim que as funções de Calculator
# fizerem o que os testes exigem. Leia cada teste e depois substitua
# os placeholders ??? em Calculator para que todos os testes passem.

defmodule Calculator do
  # TODO: faça os testes passarem

  def add(a, b), do: ???

  def divide(_a, 0), do: {:error, :division_by_zero}
  def divide(a, b), do: {:ok, a / b}

  def even?(n), do: ???
end

ExUnit.start()

defmodule CalculatorTest do
  use ExUnit.Case

  test "add sums two numbers" do
    assert Calculator.add(2, 3) == 5
    assert Calculator.add(-1, 1) == 0
  end

  test "divide returns an error tuple for zero" do
    assert Calculator.divide(10, 0) == {:error, :division_by_zero}
    assert Calculator.divide(10, 2) == {:ok, 5.0}
  end

  test "even? checks parity" do
    assert Calculator.even?(4)
    refute Calculator.even?(7)
  end
end
