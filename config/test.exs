import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test, TestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ked1V1JV2q958M4xyqySu/gAKO3xWt0rrpT1/wZG6M5fvnpc2RtBZKLVYaUHpJVv",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
