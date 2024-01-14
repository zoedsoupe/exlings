defmodule Exlings.CLI.UI do
  @moduledoc "false"

  import IO.ANSI

  @spec table(list(term), (term -> term)) :: binary
  def table(data, mapper) do
    data
    |> Enum.map(mapper)
    |> Owl.Table.new()
    |> to_string()
    |> write()
  end

  @spec write(:white | :red | :cyan | :green | :yellow, binary) :: :ok
  def write(color \\ :white, text) do
    out = apply(__MODULE__, color, [text])
    IO.puts(out)
  end

  def white(text) do
    white() <> text <> reset() <> "\n"
  end

  def red(text) do
    red() <> text <> reset() <> "\n"
  end

  def cyan(text) do
    cyan() <> text <> reset() <> "\n"
  end

  def green(text) do
    green() <> text <> reset() <> "\n"
  end

  def yellow(text) do
    yellow() <> text <> reset() <> "\n"
  end

  def code(text) do
    white_background() <> text <> default_background()
  end
end
