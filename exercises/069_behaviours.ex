# Behaviours: Contracts Between Modules
#
# A protocol dispatches on DATA (the type of a value). A behaviour
# is a contract for a whole MODULE: "any module that adopts me must
# define these functions." No dispatch, just a promise the compiler
# can check.
#
# Defining a behaviour: a plain module with @callback declarations,
# which are function specs without bodies:
#
#   defmodule Shape do
#     @callback area(struct()) :: float()
#   end
#
# Adopting a behaviour: declare @behaviour and mark each callback
# implementation with @impl true:
#
#   defmodule Square do
#     @behaviour Shape
#
#     @impl true
#     def area(%Square{side: side}), do: side * side
#   end
#
# What do you get?
# - If Square forgets area/1 or misspells it, the compiler WARNS you
# - @impl true documents "this function fulfils a callback" and
#   warns if it doesn't match any declared callback
# - Readers instantly know which interface a module provides
#
# You will meet built-in behaviours soon: GenServer, Supervisor and
# Application are all defined exactly this way.
#
# Your task:
# 1. Declare the callback in Shape: area/1 takes a struct and
#    returns a float (remember: @callback name(args) :: type())
# 2. Make Square adopt the behaviour with @behaviour
# 3. Mark area/1 as a callback implementation with @impl true
# 4. Fill in the area of a square (side * side)
#
# Expected output:
#   Square area: 16.0

defmodule Shape do
  # Declare the area/1 callback here
  ???
end

defmodule Square do
  ???  # adopt the Shape behaviour

  defstruct side: 1.0

  def new(side) do
    %Square{side: side}
  end

  ???  # mark area/1 as a callback implementation
  def area(%Square{side: side}) do
    ???
  end
end

square = Square.new(4.0)

IO.puts("Square area: #{Square.area(square)}")
