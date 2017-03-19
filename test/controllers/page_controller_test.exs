defmodule Dividasaurus.PageControllerTest do
  use Dividasaurus.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "sign_in"
  end
end
