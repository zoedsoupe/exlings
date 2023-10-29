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
            macos_m1: [os: :darwin, cpu: :aarch64],
            linux: [os: :linux, cpu: :x86_64],
            windows: [os: :windows, cpu: :x86_64]
          ],
          debug: Mix.env() != :prod
        ]
      ]
    ]
  end

  defp deps do
    [
      {:owl, "~> 0.6"},
      {:nexus_cli, "~> 0.4.2"},
      {:file_system, "~> 0.2 or ~> 0.3"},
      {:burrito, github: "burrito-elixir/burrito"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end
end
