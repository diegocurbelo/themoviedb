defmodule TheMovieDB.Series do
  @moduledoc """
  Documentation for TheMovieDB.
  """
  use Tesla

  plug Tesla.Middleware.BaseUrl, Application.get_env(:themoviedb, :api_url)
  plug Tesla.Middleware.Query, [api_key: Application.get_env(:themoviedb, :api_key)]
  plug Tesla.Middleware.JSON

end
