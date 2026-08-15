# Structs
#
# Agora que você conhece maps, vamos aprender sobre structs!
# Structs são a forma do Elixir de criar tipos de dados personalizados com campos
# nomeados. Elas são construídas sobre maps e oferecem garantias em tempo de compilação!
#
# O que são structs?
# - Tipos de dados personalizados com campos definidos
# - Definidas dentro de módulos usando defstruct
# - Como maps, mas com chaves fixas e valores padrão
# - Oferecem verificações em tempo de compilação (pegam erros de digitação!)
#
# Definindo uma struct:
#   defmodule User do
#     defstruct name: "", age: 0, email: nil
#   end
#
# Criando instâncias de structs:
#   user = %User{name: "Alice", age: 30}
#   # Campos não especificados recebem valores padrão (email: nil)
#
# Acessando campos (como maps com chaves em átomo):
#   user.name   # "Alice"
#   user.age    # 30
#
# Atualizando structs (são imutáveis!):
#   updated = %{user | age: 31}
#   # Retorna uma NOVA struct com o age alterado
#
# Casamento de padrão com structs:
#   %User{name: name} = user
#   # Extrai os campos
#
#   def greet(%User{name: name}), do: "Hello, #{name}!"
#   # Combina nos parâmetros da função
#
# Por que structs em vez de maps?
# - Segurança de tipos: não dá para usar chaves erradas por acidente
# - Documentação: os campos ficam claramente definidos
# - Casamento de padrão: dá para combinar pelo tipo da struct
# - Melhores para modelar dados de domínio
#
# Uma observação sobre scripts:
# Uma struct só pode ser construída com %Struct{} DEPOIS que seu módulo é compilado.
# O Elixir compila um arquivo de script inteiro de uma vez, então %Point{} não pode
# ser usado no nível superior do mesmo arquivo que define Point. Em projetos reais
# cada módulo fica no seu próprio arquivo, então isso nunca acontece. Aqui usamos
# uma função construtora, um padrão comum, para criar instâncias de dentro do módulo.
#
# Como uma struct É um map por baixo dos panos, você também pode combinar seus campos
# com um padrão de map simples:
#   %{x: x, y: y} = point
#
# Sua tarefa:
# 1. Defina uma struct Point com os campos x e y (padrão 0)
# 2. Preencha o construtor para construir uma struct a partir de x e y
# 3. Crie um ponto com x: 10, y: 20
# 4. Use um padrão de map para extrair as coordenadas

defmodule Point do
  defstruct ???  # Defina os campos x e y com valor padrão 0

  # Construtor: constrói um %Point{} de dentro do módulo,
  # onde a struct já está definida
  def new(x, y) do
    ???
  end
end

# Crie um ponto usando o construtor
point = ???

# Extraia as coordenadas usando um padrão de map (structs são maps!)
%{???: x, ???: y} = point

IO.puts("Point coordinates: x=#{x}, y=#{y}")
