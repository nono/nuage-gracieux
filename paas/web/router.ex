defmodule Paas.Router do
  use Paas.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Paas do
    pipe_through :api
  end
end
