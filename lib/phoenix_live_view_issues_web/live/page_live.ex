defmodule PhoenixLiveViewIssuesWeb.PageLive do
  use Phoenix.LiveView

  def mount(_session, socket),
    do: {:ok, socket}

  def render(assigns),
    do: PhoenixLiveViewIssuesWeb.PageView.render("index.html", assigns)
end
