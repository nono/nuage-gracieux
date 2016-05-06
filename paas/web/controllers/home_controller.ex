defmodule Paas.HomeController do
  @moduledoc """
  Give some informations about Paas for /
  """

  use Paas.Web, :controller
  alias Paas.Mixfile

  def index(conn, _params) do
    json conn, %{"Paas" => Mixfile.project[:version]}
  end
end
