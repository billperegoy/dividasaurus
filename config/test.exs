use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dividasaurus, Dividasaurus.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :dividasaurus, Dividasaurus.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "dividasaurus_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure hound to use phantomjs for feature tests
config :hound, driver: "phantomjs"
