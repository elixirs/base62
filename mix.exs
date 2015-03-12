defmodule Base62.Mixfile do
  use Mix.Project

  def project do
    [app: :base62,
     version: "1.1.0",
     elixir: "~> 1.0",
     description: description,
     package: package,
     deps: deps]
  end

  def application, do: []

  defp deps do
    [{:custom_base, "~> 0.1.0"}]
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
