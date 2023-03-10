# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :pretium_linea, PretiumLineaWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: PretiumLineaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PretiumLinea.PubSub,
  live_view: [signing_salt: "gLiQ9Z+B"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :pretium_linea, :companies,
  ba: %{name: "BA", handler: PretiumLinea.BA.Handler},
  afkl: %{name: "AFKL", handler: PretiumLinea.AFKL.Handler}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
