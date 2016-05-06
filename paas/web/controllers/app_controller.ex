defmodule Paas.AppController do
  @moduledoc """
  Install, update and remove applications
  """

  use Paas.Web, :controller
  alias Paas.Chef

  def create(conn, _params) do
    app = "foobar"
    resp = Chef.install app
    json conn, resp
  end
end
