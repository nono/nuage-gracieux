defmodule Paas.HomeController do
  use Paas.Web, :controller

  def index(conn, _params) do
    json conn, %{"Paas" => Paas.Mixfile.project[:version]}
  end
end
