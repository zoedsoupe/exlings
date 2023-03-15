defmodule Exlings.MixProject do
  use Mix.Project

  def project do
    [
      app: :exlings,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Exlings, []},
      extra_applications: [:logger]
    ]
  end

  def releases do
    [
      exlings: [
        steps: [:assemble, &Burrito.wrap/1],
        cookie: Base.url_encode64(:crypto.strong_rand_bytes(40)),
        burrito: [
          targets: [
            macos: [os: :darwin, cpu: :x86_64],
            linux: [os: :linux, cpu: :x86_64],
            windows: [os: :windows, cpu: :x86_64]
          ]
        ]
      ]
    ]
  end

  defp deps do
    [
      {:burrito, github: "burrito-elixir/burrito"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end
end
