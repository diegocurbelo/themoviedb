# TheMovieDB
[![Build Status](https://travis-ci.org/diegocurbelo/themoviedb.svg?branch=master)](https://travis-ci.org/diegocurbelo/themoviedb)
[![Hex.pm Version](http://img.shields.io/hexpm/v/themoviedb.svg?style=flat)](https://hex.pm/packages/themoviedb)

**TODO: Add description**

## Installation

Add `themoviedb` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:themoviedb, "~> 0.1"}]
end
```

## Usage

```elixir
> {:ok, movies} = TheMovieDB.Movies.search "star trek"
...

> movies |> Enum.map(&(&1.title))
["Are you the lucky one ?", "Hide and Seek", "Playing guitar for little cate", ...]
```

## Results

#### Movie
  - `id` feed identifier (usually the site url)
  - `title` feed title
  - `description` feed description
  - `url` feed url
  - `site_url` feed main site url
  - `updated` feed last modification timestamp
  - `entries` entry list


## Documentation

Documentation is available at [https://hexdocs.pm/themoviedb](https://hexdocs.pm/themoviedb)


## License

This software is licensed under [the MIT license](LICENSE.md).