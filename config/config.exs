# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :grellyd_site,
  ecto_repos: [GrellydSite.Repo]

# Configures the endpoint
config :grellyd_site, GrellydSiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "a3e3uwZnJf8Khei8scl6gw+7Pux1TvdFdfhPvHegYeAM7qe28Cc9PncVPMAyNnT6",
  render_errors: [view: GrellydSiteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GrellydSite.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
