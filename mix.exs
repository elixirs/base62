defmodule Base62.Mixfile do
  use Mix.Project

  @version "1.2.0"
  @github "https://github.com/igas/base62"

  def project do
    [app: :base62,
     version: @version,
     elixir: "~> 1.0",
     name: "Base62",
     description: description(),
     package: package(),
     source_url: @github,
     docs: [extras: ["README.md"],
            main: "README",
            source_ref: "v#{@version}",
            source_url: @github],
     deps: deps()]
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
    [maintainers: ["Igor Kapkov"],
     files: ["lib", "mix.exs", "README.md", "LICENSE"],
     licenses: ["MIT"],
     links: %{"Github" => @github}]
  end
end
