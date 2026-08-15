# Dispatching Through a Behaviour
#
# One behaviour, many implementations. Code written against the
# CONTRACT works with every module that fulfils it, present and
# future. This is how you swap pieces without touching the caller:
# a GenServer doesn't care what YOUR callback module is, only that
# it implements the callbacks.
#
# When is a behaviour the right tool, and not a protocol?
# - Protocol: the choice depends on the DATA (how do I stringify
#   THIS struct?)
# - Behaviour: the choice is a STRATEGY, a pluggable provider. The
#   data is the same either way; only the module changes.
#
# Classic example: notifications. The message and the recipient are
# the same strings no matter HOW they get delivered. Building an
# Email or Sms struct just to trigger different code would be
# artificial. Instead, each provider is a module implementing the
# same behaviour, and the caller passes the module around.
#
# Modules are just atoms, and atoms are values. You can store a
# module in a variable, pass it as an argument, put it in a list...
# and call functions on it:
#
#   provider = Email
#   provider.deliver("alice@example.com", "hi")   # Email.deliver(...)
#
# So a dispatcher can be fully generic:
#
#   def broadcast(providers, recipient, message) do
#     Enum.map(providers, fn provider ->
#       provider.deliver(recipient, message)
#     end)
#   end
#
#   broadcast([Email, Sms], "alice@example.com", "hi")
#
# The compiler checked (via @behaviour/@impl) that every provider
# really defines deliver/2, so the call is safe.
#
# Your task:
# Email and Sms both adopt the Notifier behaviour. The data is
# identical for both; only the delivery strategy changes.
# 1. Implement Email.deliver/2: return "[email] to RECIPIENT: MESSAGE"
# 2. Implement Sms.deliver/2: return "[sms] to RECIPIENT: MESSAGE"
# 3. Fill in broadcast/3 so it calls deliver/2 through the provider
#    module variable
#
# Expected output:
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
  # Works with ANY module that implements Notifier, even providers
  # invented after this module was written
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
