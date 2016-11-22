# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :idea_board,
  ecto_repos: [IdeaBoard.Repo]

# Configures the endpoint
config :idea_board, IdeaBoard.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ugqsPq6gcMgi0XtscNB2SL1nmEE6l24NIkUmrjf8W5jj9OTG1VgMSAizjNxstJE8",
  render_errors: [view: IdeaBoard.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IdeaBoard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
