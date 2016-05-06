defmodule Paas.Router do
  @moduledoc """
  Phoenix router
  """

  use Paas.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Paas do
    pipe_through :api
    get "/", HomeController, :index
    resources "/apps", AppController, only: [:create]
  end
end
