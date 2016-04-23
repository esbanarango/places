defmodule Places.PageController do
  use Places.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
