defmodule Paas.HomeControllerTest do
  use Paas.ConnCase

  test "index", %{conn: conn} do
    conn = get conn, "/"
    assert conn.status == 200
  end
end
