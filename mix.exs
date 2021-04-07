defmodule ElasticTesla.MixProject do
  use Mix.Project

  def project do
    [
      app: :elastic_tesla,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      dialyzer: [
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"}
      ],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:hackney, "~> 1.17.0"},
      {:jason, ">= 1.0.0"},
      {:tesla, "~> 1.4.0"}
    ]
  end
end
