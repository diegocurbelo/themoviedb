defmodule TheMovieDB.Middleware.ErrorHandler do
  @moduledoc """
  Return :ok/:error tuples for successful HTTP transations, i.e. when the request is completed
  (no network errors etc) - but it can still be an application-level error (i.e. 404 or 500)
  """
  @behaviour Tesla.Middleware

  def call(env, next, _opts) do
    # try do
    #   # {:ok, Tesla.run(env, next)}
    #   case Tesla.run(env, next) do
    #     %{status: status} = env when status < 400
    #       -> {:ok, env}
    #     env
    #       -> {:error, env}
    #   end
    # rescue
    #   e in Tesla.Error ->
    #     {:error, e}
    # end
    res = Tesla.run(env, next)
    # IO.inspect res # print response env
    res
  end
end
