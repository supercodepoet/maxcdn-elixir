defmodule MaxCDN.Mixfile do
  use Mix.Project

  def project do
    [app: :maxcdn,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  def package do
    [
      maintainers: ["Travis Chase"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/supercodepote/maxcdn-elixir"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:oauther, "~> 1.0.1"}]
  end
end
