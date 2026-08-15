# Import
#
# import vai um passo além do alias: permite chamar as FUNÇÕES de
# um módulo sem nenhum prefixo de módulo:
#
#   import String
#
#   upcase("elixir")     # igual a String.upcase("elixir")
#
# Importar tudo raramente é uma boa ideia: fica difícil saber de
# onde vem cada função. Prefira listar exatamente o que você
# precisa com :only :
#
#   import String, only: [upcase: 1]
#
# O 1 é a aridade (número de argumentos). upcase/1 e upcase/2
# são funções diferentes e são importadas separadamente.
#
# import vs require:
# - import traz FUNÇÕES (e macros) para o escopo
# - require apenas permite usar as MACROS de um módulo, e é
#   geralmente combinado com import
#
# Uma observação sobre scripts:
# O Elixir compila um arquivo de script inteiro de uma vez, então
# um módulo definido no mesmo script não pode ser importado no
# nível superior desse script (a compilação falha). Em projetos
# reais cada módulo fica no seu próprio arquivo, então isso nunca
# acontece. Aqui importamos da biblioteca padrão: o conceito é
# exatamente o mesmo.
#
# Sua tarefa:
# Chame as funções importadas de String SEM o prefixo String.

import String, only: [upcase: 1, pad_leading: 2]

shout = ???("beam")
padded = ???("42", 5)

IO.puts(shout)
IO.puts(padded)

# Tente isto: import Integer e chame is_even(4) e is_odd(4).
