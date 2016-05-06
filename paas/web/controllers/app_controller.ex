defmodule Paas.AppController do
  @moduledoc """
  Install, update and remove applications
  """

  use Paas.Web, :controller

  def create(conn, _params) do
    app = "foobar"
    resp = Paas.Chef.install app
    json conn, resp
  end
end
