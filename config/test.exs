use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :idea_board, IdeaBoard.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :idea_board, IdeaBoard.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "idea_board_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
