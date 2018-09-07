# TheMovieDB
[![Build Status](https://travis-ci.org/diegocurbelo/themoviedb.svg?branch=master)](https://travis-ci.org/diegocurbelo/themoviedb)
[![Hex.pm Version](http://img.shields.io/hexpm/v/themoviedb.svg?style=flat)](https://hex.pm/packages/themoviedb)

**An Elixir client for themoviedb.org (TMDb) API**

## Installation

Add `themoviedb` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:themoviedb, "~> 0.1"}]
end
```

## Usage

```elixir
iex(1)> TheMovieDB.Movies.search "Star Trek Into Darkness"
{:ok,
 %{
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
```

## Results

#### Movie
  - TODO


## Documentation

Documentation is available at [https://hexdocs.pm/themoviedb](https://hexdocs.pm/themoviedb)


## License

This software is licensed under [the MIT license](LICENSE.md).
