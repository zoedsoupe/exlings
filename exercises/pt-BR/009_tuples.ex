# Tuplas
#
# Tuplas são coleções ordenadas de valores, escritas com chaves.
# Elas são perfeitas para agrupar um número fixo de itens!
#
# O que são tuplas?
# - Escritas com chaves: {1, 2, 3}
# - Podem guardar tipos diferentes: {:ok, "success", 42}
# - Tamanho fixo (não foram feitas para crescer ou encolher)
# - Acesso muito rápido
#
# Usos comuns:
# - Retornar múltiplos valores de uma função
# - Tuplas de status como {:ok, result} ou {:error, reason}
# - Representar dados de tamanho fixo como coordenadas {x, y}
#
# Exemplos:
#   point = {10, 20}
#   person = {"Alice", 25}
#   result = {:ok, "Data loaded"}
#
# Tuplas estão por toda parte em Elixir! Você vai vê-las bastante ao
# trabalhar com funções que podem ter sucesso ou falhar.
#
# Sua tarefa:
# Crie tuplas com os valores corretos

# Crie uma tupla com :ok e o número 42
status_tuple = ???

# Crie uma tupla com as coordenadas 100, 200
coordinates = ???

IO.puts("Status: #{inspect(status_tuple)}")
IO.puts("Coordinates: #{inspect(coordinates)}")
