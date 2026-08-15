# Otimização de Chamada de Cauda
#
# Olhe essas duas formas de contar uma lista:
#
#   # Não é recursiva de cauda:
#   def count([_head | tail]), do: 1 + count(tail)
#
#   # Recursiva de cauda:
#   def count(list), do: do_count(list, 0)
#   defp do_count([], acc), do: acc
#   defp do_count([_head | tail], acc), do: do_count(tail, acc + 1)
#
# Uma chamada recursiva está em "posição de cauda" quando é a ÚLTIMA coisa
# que a função faz. Na primeira versão o + 1 ainda fica esperando a
# chamada recursiva retornar, então a BEAM precisa lembrar de cada
# chamada na pilha. Na segunda versão nada acontece depois da chamada,
# então a BEAM reutiliza o mesmo histórico da pilha de execução. Isso é
# otimização de chamada de cauda (TCO).
#
# Por que isso importa:
# - Recursão sem chamada de cauda usa memória proporcional ao tamanho da lista
# - Recursão de cauda usa memória CONSTANTE, mesmo para listas enormes
# - Laços que rodam para sempre (como servidores) precisam ser recursivos de cauda
#
# Sua tarefa:
# Escreva o corpo de do_count/2 para que a chamada recursiva esteja em
# posição de cauda: recurse sobre o resto com um acumulador uma unidade maior

defmodule ListCounter do
  def count(list), do: do_count(list, 0)

  defp do_count([], acc), do: acc

  defp do_count([_head | tail], acc) do
    ???
  end
end

list = Enum.to_list(1..1000)
IO.puts("Count: #{ListCounter.count(list)}")
