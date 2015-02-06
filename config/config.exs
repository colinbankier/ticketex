# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :ticketex, Ticketex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eSCL9SqXb9gCn+DqMT6ThnoacmHTgHDWwo/LYNi7PhQAzdboU7TegHEZ+3OqOuGK",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
config :hound, driver: "phantomjs"
config :hound, app_host: "http://localhost", app_port: 4000

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
