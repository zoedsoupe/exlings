# Behaviours: Contratos Entre Módulos
#
# Um protocolo despacha com base em DADOS (o tipo de um valor). Um
# behaviour é um contrato para um MÓDULO inteiro: "qualquer módulo
# que me adota deve definir estas funções." Sem despacho, apenas uma
# promessa que o compilador consegue verificar.
#
# Definindo um behaviour: um módulo comum com declarações @callback,
# que são especificações de função sem corpo:
#
#   defmodule Shape do
#     @callback area(struct()) :: float()
#   end
#
# Adotando um behaviour: declare @behaviour e marque cada
# implementação de callback com @impl true:
#
#   defmodule Square do
#     @behaviour Shape
#
#     @impl true
#     def area(%Square{side: side}), do: side * side
#   end
#
# O que você ganha?
# - Se Square esquecer area/1 ou escrever o nome errado, o
#   compilador AVISA você
# - @impl true documenta "esta função cumpre um callback" e avisa
#   se ela não corresponde a nenhum callback declarado
# - Leitores sabem na hora qual interface o módulo fornece
#
# Você vai conhecer behaviours embutidos em breve: GenServer,
# Supervisor e Application são todos definidos exatamente assim.
#
# Sua tarefa:
# 1. Declare o callback em Shape: area/1 recebe uma struct e
#    retorna um float (lembre-se: @callback nome(args) :: tipo())
# 2. Faça Square adotar o behaviour com @behaviour
# 3. Marque area/1 como implementação de callback com @impl true
# 4. Preencha a área de um quadrado (side * side)
#
# Saída esperada:
#   Square area: 16.0

defmodule Shape do
  # Declare o callback area/1 aqui
  ???
end

defmodule Square do
  ???  # adote o behaviour Shape

  defstruct side: 1.0

  def new(side) do
    %Square{side: side}
  end

  ???  # marque area/1 como implementação de callback
  def area(%Square{side: side}) do
    ???
  end
end

square = Square.new(4.0)

IO.puts("Square area: #{Square.area(square)}")
