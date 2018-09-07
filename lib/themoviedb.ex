defmodule TheMovieDB do
  @moduledoc """
  Documentation for TheMovieDB.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.themoviedb.org"
  # plug Tesla.Middleware.Headers, [{"Authorization", "Bearer xyz"}]
  plug Tesla.Middleware.JSON


  @doc """
  Hello world.

  ## Examples

      iex> TheMovieDB.search("Jack+Reacher")
      {:ok, %Tesla.Env{}}

  """
  def search(query) do
    # encode query
    api_key = Application.get_env(:themoviedb, :api_key)
    get("/3/search/movie?api_key=" <> api_key <> "&query=" <> query)
  end

  def detail(movie_id) do
    api_key = Application.get_env(:themoviedb, :api_key)
    get("/3/movie/" <> movie_id <> "?api_key=" <> api_key <>"&append_to_response=videos,images")
  end
end
