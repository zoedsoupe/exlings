# Despachando Através de um Behaviour
#
# Um behaviour, muitas implementações. Código escrito contra o
# CONTRATO funciona com todo módulo que o cumpre, presente e futuro.
# É assim que você troca peças sem tocar em quem chama: um GenServer
# não se importa com QUAL é o seu módulo de callback, apenas que ele
# implementa os callbacks.
#
# Quando um behaviour é a ferramenta certa, e não um protocolo?
# - Protocolo: a escolha depende dos DADOS (como transformo ESTA
#   struct em string?)
# - Behaviour: a escolha é uma ESTRATÉGIA, um provedor plugável. Os
#   dados são os mesmos de qualquer jeito; só o módulo muda.
#
# Exemplo clássico: notificações. A mensagem e o destinatário são as
# mesmas strings não importa COMO serão entregues. Criar structs
# Email ou Sms só para disparar código diferente seria artificial.
# Em vez disso, cada provedor é um módulo implementando o mesmo
# behaviour, e quem chama passa o módulo adiante.
#
# Módulos são apenas átomos, e átomos são valores. Você pode guardar
# um módulo em uma variável, passá-lo como argumento, colocá-lo em
# uma lista... e chamar funções nele:
#
#   provider = Email
#   provider.deliver("alice@example.com", "hi")   # Email.deliver(...)
#
# Então um despachante pode ser totalmente genérico:
#
#   def broadcast(providers, recipient, message) do
#     Enum.map(providers, fn provider ->
#       provider.deliver(recipient, message)
#     end)
#   end
#
#   broadcast([Email, Sms], "alice@example.com", "hi")
#
# O compilador verificou (via @behaviour/@impl) que todo provedor
# realmente define deliver/2, então a chamada é segura.
#
# Sua tarefa:
# Email e Sms adotam o behaviour Notifier. Os dados são idênticos
# para os dois; só a estratégia de entrega muda.
# 1. Implemente Email.deliver/2: retorne "[email] to RECIPIENT: MESSAGE"
# 2. Implemente Sms.deliver/2: retorne "[sms] to RECIPIENT: MESSAGE"
# 3. Preencha broadcast/3 para chamar deliver/2 através da variável
#    de módulo provider
#
# Saída esperada:
#   [email] to alice@example.com: build succeeded
#   [sms] to alice@example.com: build succeeded

defmodule Notifier do
  @callback deliver(recipient :: String.t(), message :: String.t()) :: String.t()
end

defmodule Email do
  @behaviour Notifier

  @impl true
  def deliver(recipient, message) do
    ???
  end
end

defmodule Sms do
  @behaviour Notifier

  @impl true
  def deliver(recipient, message) do
    ???
  end
end

defmodule Alert do
  # Funciona com QUALQUER módulo que implemente Notifier, até
  # provedores inventados depois que este módulo foi escrito
  def broadcast(providers, recipient, message) do
    Enum.map(providers, fn provider ->
      ???
    end)
  end
end

recipient = "alice@example.com"
message = "build succeeded"

for line <- Alert.broadcast([Email, Sms], recipient, message) do
  IO.puts(line)
end
