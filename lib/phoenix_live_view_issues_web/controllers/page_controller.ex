defmodule PhoenixLiveViewIssuesWeb.PageController do
  use PhoenixLiveViewIssuesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
