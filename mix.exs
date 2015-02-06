defmodule Ticketex.Mixfile do
  use Mix.Project

  def project do
    [app: :ticketex,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Ticketex, []},
     applications: app_list(Mix.env) ]
  end

  defp app_list(:test), do: [:hound | app_list]
  defp app_list(_), do: app_list
  defp app_list, do: [:phoenix, :cowboy, :logger]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 0.8.0"},
      {:cowboy, "~> 1.0"},
      {:hound, "~> 0.6.0"}
    ]
  end
end
