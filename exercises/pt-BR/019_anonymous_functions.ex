# Funções Anônimas
#
# Funções anônimas são funções sem nome. Elas são perfeitas
# para operações curtas e para passar funções como argumentos!
#
# O que são funções anônimas?
# - Funções sem nome
# - Podem ser atribuídas a variáveis
# - Criadas com fn...end
# - Chamadas com um ponto: my_func.(args)
#
# Sintaxe:
#   fn arg1, arg2 -> expression end
#
# A seta -> separa os parâmetros do corpo.
#
# Exemplos:
#   add = fn a, b -> a + b end
#   add.(5, 3)  # 8 (note o ponto!)
#
#   greet = fn name -> "Hello, #{name}!" end
#   greet.("Alice")  # "Hello, Alice!"
#
# Por que funções anônimas?
# - Passar funções como argumentos (funções de ordem superior)
# - Operações rápidas e pontuais
# - Closures (capturam variáveis do escopo externo)
#
# Nomeadas vs Anônimas:
# - Funções nomeadas: definidas com def, sem ponto na chamada
# - Funções anônimas: usam fn...end, precisam do ponto na chamada
#
# Funções anônimas de múltiplas linhas:
#   my_func = fn x ->
#     result = x * 2
#     result + 1
#   end
#
# Sua tarefa:
# Crie uma função anônima que dobra um número

double = fn ??? -> ??? end

result = double.(21)
IO.puts("Double of 21 is: #{result}")
