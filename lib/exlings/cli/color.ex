defmodule Exlings.CLI.Color do
  @moduledoc "false"

  import IO.ANSI

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
    green() <> text <> reset() <> "\n"
  end
end
