use Mix.Config

config :themoviedb, api_url: "https://api.themoviedb.org/3"
config :themoviedb, api_key: nil

import_config "#{Mix.env()}.exs"
