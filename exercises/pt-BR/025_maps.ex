# Maps
#
# Maps são estruturas de dados de chave-valor. São como dicionários em Python
# ou objetos em JavaScript - perfeitos para guardar dados relacionados!
#
# O que são maps?
# - Pares chave-valor: %{key => value}
# - As chaves podem ser de qualquer tipo (átomos, strings, números, etc.)
# - Muito eficientes para buscar valores pela chave
# - Comumente usados para dados estruturados
#
# Criando maps:
#   %{"name" => "Alice", "age" => 30}
#   %{:status => :ok, :data => [1, 2, 3]}
#
# Quando as chaves são átomos, existe uma sintaxe abreviada:
#   %{name: "Alice", age: 30}
#   # Igual a: %{:name => "Alice", :age => 30}
#
# Acessando valores:
#   user = %{name: "Alice", age: 30}
#   user[:name]     # "Alice" (funciona para qualquer tipo de chave)
#   user.name       # "Alice" (só para chaves em átomo!)
#
# Atualizando maps (imutáveis!):
#   user = %{name: "Alice", age: 30}
#   updated = %{user | age: 31}  # Retorna um NOVO map
#
# Casamento de padrão com maps:
#   %{name: name, age: age} = user
#   # Extrai os valores
#
#   %{name: name} = user
#   # Extrai só o nome, ignorando os outros campos
#
# Sua tarefa:
# Crie um map representando uma pessoa com os campos name e age
# Use chaves em átomo com a sintaxe abreviada

person = ???  # Crie um map com chaves em átomo: %{name: "Bob", age: 25}

# Acesse os valores
name = person.name
age = person[:age]

IO.puts("Name: #{name}, Age: #{age}")
