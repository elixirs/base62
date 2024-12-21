defmodule Base62.Mixfile do
  use Mix.Project

  @version "1.2.2"
  @github "https://github.com/elixirs/base62"

  def project do
    [
      app: :base62,
      version: @version,
      elixir: "~> 1.12",
      name: "Base62",
      description: description(),
      package: package(),
      source_url: @github,
      docs: docs(),
      deps: deps()
    ]
  end

  def application, do: []

  defp docs do
    [
      extras: ["README.md"],
      main: "readme",
      name: "Base62",
      canonical: "https://hexdocs.pm/base62",
      source_ref: "v#{@version}",
      source_url: @github
    ]
  end

  defp deps do
    [
      {:custom_base, "~> 0.2.1"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:earmark, "~> 1.2", only: :dev},
      {:stream_data, "~> 1.0", only: :test}
    ]
  end

  defp description do
    "Base62 encoder/decoder in pure Elixir."
  end

  defp package do
    [
      maintainers: ["Igor Kapkov"],
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      licenses: ["MIT"],
      links: %{"Github" => @github}
    ]
  end
end
