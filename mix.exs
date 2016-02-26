defmodule Base62.Mixfile do
  use Mix.Project

  def project do
    [app: :base62,
     version: "1.1.0",
     elixir: "~> 1.0",
     name: "Base62",
     description: description,
     package: package,
     source_url: "https://github.com/igas/base62",
     deps: deps]
  end

  def application, do: []

  defp deps do
    [{:custom_base, "~> 0.2.0"},
     {:ex_doc, "~> 0.11", only: :dev},
     {:earmark, "~> 0.2", only: :dev}]
  end

  defp description do
    "Base62 encoder/decoder in pure Elixir."
  end

  defp package do
    [contributors: ["Igor Kapkov"],
     files: ["lib", "mix.exs", "README.md", "LICENSE"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/igas/base62"}]
  end
end
