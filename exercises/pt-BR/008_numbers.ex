# Números e Tipos
#
# Elixir tem dois tipos principais de números: inteiros (integers) e floats.
# Entender a diferença é importante!
#
# Inteiros:
# - Números inteiros: 1, 42, -17, 0
# - Sem ponto decimal
# - Podem ser arbitrariamente grandes (sem overflow no uso normal!)
# - Você pode usar underscores para legibilidade: 1_000_000
#
# Floats:
# - Números decimais: 1.5, 3.14, -0.5
# - Sempre têm ponto decimal
# - Precisão dupla de 64 bits
#
# Exemplos:
#   age = 25                    # inteiro
#   pi = 3.14159                # float
#   big_number = 1_000_000      # inteiro (underscore é ignorado)
#
# As funções is_integer/1 e is_float/1:
# - Verificam se um valor é inteiro ou float
# - Retornam true ou false
#
# Lembrete do exercício 004:
# - A divisão (/) SEMPRE retorna um float
# - Divisão inteira usa div
#
# Sua tarefa:
# Crie os tipos corretos de números

my_integer = ???  # Qualquer inteiro que você quiser

my_float = ???  # Qualquer float que você quiser (precisa ter ponto decimal!)

# Vamos verificar os tipos!
IO.puts("Integer: #{my_integer}, is integer? #{is_integer(my_integer)}")
IO.puts("Float: #{my_float}, is float? #{is_float(my_float)}")
