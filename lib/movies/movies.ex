defmodule TheMovieDB.Movies do
  @moduledoc """
  Documentation for TheMovieDB.
  """
  use Tesla

  plug Tesla.Middleware.BaseUrl, Application.get_env(:themoviedb, :api_url)
  plug Tesla.Middleware.Query, [api_key: Application.get_env(:themoviedb, :api_key)]
  plug Tesla.Middleware.DecodeJson
  plug TheMovieDB.Middleware.ErrorHandler

  @doc """
    Hello world.

    ## Examples

      iex> TheMovieDB.Movies.search "Star Trek Into Darkness"
      {:ok, %{
        "page" => 1,
        "results" => [
          %{
            "adult" => false,
              "backdrop_path" => "/ns0IojuqJe24AHTxe8RVcWJUCDM.jpg",
              "genre_ids" => [28, 12, 878],
              "id" => 54138,
              "original_language" => "en",
              "original_title" => "Star Trek Into Darkness",
              "overview" => "When the crew of the Enterprise is called back home, they find an unstoppable force of terror from within their own organization has detonated the fleet and everything it stands for, leaving our world in a state of crisis.  With a personal score to settle, Captain Kirk leads a manhunt to a war-zone world to capture a one man weapon of mass destruction. As our heroes are propelled into an epic chess game of life and death, love will be challenged, friendships will be torn apart, and sacrifices must be made for the only family Kirk has left: his crew.",
              "popularity" => 19.527,
              "poster_path" => "/41mhrXASAW3sdn7LBWF49uCX0xi.jpg",
              "release_date" => "2013-05-05",
              "title" => "Star Trek Into Darkness",
              "video" => false,
              "vote_average" => 7.4,
              "vote_count" => 5454
          }
        ],
        "total_pages" => 1,
        "total_results" => 1
      }}

      iex> TheMovieDB.Movies.search "non-existent-movie"
      {:ok, %{
        "page" => 1,
        "results" => [],
        "total_pages" => 1,
        "total_results" => 0
      }}
  """
  def search(query) do
    {:ok, tesla_env} = get "/search/movie", query: [query: URI.encode(query)]
    {:ok, tesla_env.body}
  end


  # @doc """
  #   Hello world.

  #   ## Examples

  #     iex> TheMovieDB.Movies.detail 54138
  #     true
  # """
  # def detail(movie_id) when is_integer(movie_id), do: detail(Integer.to_string(movie_id))
  # def detail(movie_id) when is_binary(movie_id) do
  #   get "/movie/" <> movie_id, query: [append_to_response: "videos,images"]
  # end
end
