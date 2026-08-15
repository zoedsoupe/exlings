# Listas de Palavras-chave
#
# Listas de palavras-chave são listas especiais onde cada elemento é uma tupla de dois itens
# com um átomo como primeiro elemento. São muito comuns em Elixir!
#
# O que são listas de palavras-chave?
# - Uma lista de tuplas {atom, value}
# - Escritas com uma sintaxe especial: [key: value, key2: value2]
# - Podem ter chaves duplicadas
# - A ordem é preservada
# - Comumente usadas para opções de funções
#
# Sintaxe completa:
#   [{:name, "Alice"}, {:age, 30}]
#
# Sintaxe abreviada (mais comum):
#   [name: "Alice", age: 30]
#
# Por que listas de palavras-chave?
# - Opções de funções: String.split(text, trim: true)
# - Parâmetros de consulta
# - Configuração
# - Sempre que você precisar de pares chave-valor ordenados
#
# Acessando valores:
#   config = [host: "localhost", port: 4000]
#   config[:host]        # "localhost"
#   Keyword.get(config, :port)  # 4000
#
# Keyword lists vs Maps:
# - Keyword lists: ordenadas, podem ter duplicatas, usadas para opções
# - Maps: não ordenados, chaves únicas, usados para dados estruturados
#
# Casamento de padrão:
#   [name: name, age: age] = [name: "Alice", age: 30]
#
# Comuns em chamadas de função:
#   def connect(host, opts \\ []) do
#     port = Keyword.get(opts, :port, 80)
#     # ...
#   end
#
# Sua tarefa:
# Crie uma keyword list com a configuração do banco de dados

db_config = ???  # Crie [host: "localhost", port: 5432, database: "myapp"]

host = db_config[:host]
port = db_config[:port]

IO.puts("Connecting to #{host}:#{port}")
