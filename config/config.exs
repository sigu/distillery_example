# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :distillery_example,
  ecto_repos: [DistilleryExample.Repo]

# Configures the endpoint
config :distillery_example, DistilleryExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "g1WSm3O2UlUaHAy3S/0txtJ0QFQU+d/cxfNnhXNKx85a93jSsYc/eg2T95XLsh4W",
  render_errors: [view: DistilleryExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DistilleryExample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
