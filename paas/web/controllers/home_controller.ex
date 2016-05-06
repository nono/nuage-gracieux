defmodule Paas.HomeController do
  @moduledoc """
  Give some informations about Paas for /
  """

  use Paas.Web, :controller

  def index(conn, _params) do
    json conn, %{"Paas" => Paas.Mixfile.project[:version]}
  end
end
