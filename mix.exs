defmodule TheMovieDB.MixProject do
  use Mix.Project

  def project do
    [
      app: :themoviedb,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev},
      {:tesla, "~> 1.1"},
      {:jason, "~> 1.1"}
    ]
  end

  defp description() do
    "An Elixir client for themoviedb.org (TMDb) API"
  end

  defp package() do
    [
      maintainers: ["diegocurbelo"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/diegocurbelo/themoviedb"}
    ]
  end
end
