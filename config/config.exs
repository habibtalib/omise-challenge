# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :omise_go, OmiseGoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8/Uu496qCCxs5PuG3VXZElJz1BSKkVZ/N6L1sKeE0zxNbotEVBVT1VtUeQmo4BrI",
  render_errors: [view: OmiseGoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OmiseGo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :scrivener_html,
  routes_helper: OmiseGoWeb.Router.Helpers,
  # If you use a single view style everywhere, you can configure it here. See View Styles below for more info.
  view_style: :bootstrap_v4

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
