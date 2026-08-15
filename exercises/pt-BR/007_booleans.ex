# Booleanos
#
# Booleanos representam valores verdadeiros ou falsos. Eles são essenciais
# para tomar decisões no seu código!
#
# Os dois valores booleanos:
# - true   (sim, correto, ligado)
# - false  (não, incorreto, desligado)
#
# Como mencionado no exercício de átomos, true e false são na verdade
# átomos (:true e :false), mas normalmente escrevemos apenas
# true e false.
#
# Operadores booleanos:
# - and  - Retorna true se ambos os lados forem true
# - or   - Retorna true se pelo menos um lado for true
# - not  - Inverte true para false e false para true
#
# Exemplos:
#   true and true   # true
#   true and false  # false
#   true or false   # true
#   not true        # false
#
# Operadores de comparação (retornam booleanos):
# - ==  igual a
# - !=  diferente de
# - >   maior que
# - <   menor que
# - >=  maior ou igual a
# - <=  menor ou igual a
#
# Sua tarefa:
# Substitua ??? por valores booleanos (true ou false) para tornar as afirmações corretas

is_elixir_fun = ???  # Aprender Elixir é divertido? (true)

is_earth_flat = ???  # A Terra é plana? (false)

result = is_elixir_fun and not is_earth_flat

IO.puts("Elixir is fun: #{is_elixir_fun}")
IO.puts("Earth is flat: #{is_earth_flat}")
IO.puts("Result: #{result}")
