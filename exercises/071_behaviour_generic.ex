# Generic Functions with Behaviours
#
# A behaviour is a CONTRACT: a list of callbacks that a module
# promises to implement. You define it with @callback:
#
#   defmodule Storage do
#     @callback save(String.t()) :: :ok
#     @callback load() :: {:ok, String.t()} | :error
#   end
#
# A module opts in with @behaviour and implements each callback
# (mark them with @impl true so the compiler can help you):
#
#   defmodule NullStorage do
#     @behaviour Storage
#
#     @impl true
#     def save(_data), do: :ok
#
#     @impl true
#     def load(), do: :error
#   end
#
# The payoff is GENERIC code: a function that receives the module
# itself as an argument and calls the contract, without knowing
# which implementation it got:
#
#   def greet(greeter_module, name) do
#     greeter_module.greeting_for(name)
#   end
#
# Modules are just atoms, so you can pass them around and call
# functions on them through a variable. This is "contract first"
# design: define the callbacks, write the generic logic against
# them, then plug in any implementation that honors the contract.
#
# Your task:
# An Encoder behaviour and two implementations are wired up.
# Complete the @callback declaration and the generic emit/2
# function. Expected output:
#
#   Query: name=ana&lang=elixir
#   CSV:   ana,elixir

defmodule Encoder do
  # The contract: one callback that turns key/value pairs into a string
  @callback ???
end

defmodule QueryEncoder do
  @behaviour Encoder

  @impl true
  def encode(pairs) do
    pairs
    |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
    |> Enum.join("&")
  end
end

defmodule CsvEncoder do
  @behaviour Encoder

  @impl true
  def encode(pairs) do
    pairs
    |> Enum.map(fn {_key, value} -> value end)
    |> Enum.join(",")
  end
end

# Generic: works with ANY module that implements the Encoder contract
defmodule Emitter do
  def emit(encoder, pairs) do
    ???(pairs)
  end
end

data = [name: "ana", lang: "elixir"]

IO.puts("Query: #{Emitter.emit(QueryEncoder, data)}")
IO.puts("CSV:   #{Emitter.emit(CsvEncoder, data)}")
