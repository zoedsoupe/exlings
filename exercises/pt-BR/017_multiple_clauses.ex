# Múltiplas Cláusulas de Função
#
# Em Elixir, você pode definir várias versões da mesma função
# com padrões diferentes. O Elixir tenta cada cláusula de cima para
# baixo até encontrar uma que combine!
#
# Por que múltiplas cláusulas?
# - Lidar com padrões de entrada diferentes de formas diferentes
# - Deixa o código mais legível do que if/else aninhados
# - Muito idiomático em Elixir
#
# Exemplo:
#   defmodule Greeter do
#     def hello(:world) do
#       "Hello, World!"
#     end
#
#     def hello(name) do
#       "Hello, #{name}!"
#     end
#   end
#
#   Greeter.hello(:world)    # "Hello, World!"
#   Greeter.hello("Alice")   # "Hello, Alice!"
#
# Casamento de padrão em cláusulas de função:
# As funções tentam combinar seus argumentos com os padrões de
# cima para baixo. A primeira cláusula que combinar é executada.
#
# Padrão comum - lidando com resultados:
#   def handle({:ok, value}), do: "Success: #{value}"
#   def handle({:error, reason}), do: "Error: #{reason}"
#
# Sua tarefa:
# Adicione uma segunda cláusula de função para lidar com tuplas {:error, _}

defmodule Result do
  def handle_result({:ok, value}) do
    "Success: #{value}"
  end

  # Adicione sua cláusula aqui para {:error, reason}
  ???
end

IO.puts(Result.handle_result({:ok, 42}))
IO.puts(Result.handle_result({:error, "failed"}))
