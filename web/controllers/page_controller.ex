defmodule ImageBoard.PageController do
  use ImageBoard.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
