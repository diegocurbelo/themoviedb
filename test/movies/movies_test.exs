defmodule TheMovieDB.MoviesTest do
  use ExUnit.Case

  import Tesla.Mock

  doctest TheMovieDB.Movies

  setup do
    mock fn
      %{method: :get, url: "https://api.themoviedb.org/3/search/movie", query: [query: "Star%20Trek%20Into%20Darkness", api_key: "test_api_key"]} ->
        %Tesla.Env{status: 200, body: %{
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

      %{method: :get, url: "https://api.themoviedb.org/3/search/movie", query: [query: "non-existent-movie", api_key: "test_api_key"]} ->
        %Tesla.Env{status: 200, body: %{
          "page" => 1,
          "results" => [],
          "total_pages" => 1,
          "total_results" => 0
        }}

      %{method: :get, url: "https://api.themoviedb.org/3/movie/12345?api_key=test_api_key&append_to_response=videos,images"} ->
      json(%{"my" => "data"})
    end

    :ok
  end
end
