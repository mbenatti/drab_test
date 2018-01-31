# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :drab_show, DrabShowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tjGyS+icwvDhBjNOsvbUo1W+oPHxgGZGZ+qN5IOm8x3JgYugkY40QcDU0nW3rUpk",
  render_errors: [view: DrabShowWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DrabShow.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
