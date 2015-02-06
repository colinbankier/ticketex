use Mix.Config

config :ticketex, Ticketex.Endpoint,
  http: [port: System.get_env("PORT") || 4001]

# Print only warnings and errors during test
config :logger, level: :warn

config :hound, driver: "phantomjs"
config :hound, app_host: "http://localhost", app_port: 4000
