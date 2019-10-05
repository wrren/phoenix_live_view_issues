defmodule PhoenixLiveViewIssuesWeb.PageLive do
  use Phoenix.LiveView
  require Logger

  def mount(_session, socket) do
    Logger.info "Mounted PageLive"
    {:ok, socket}
  end

  def render(assigns),
    do: PhoenixLiveViewIssuesWeb.PageView.render("index.html", assigns)
end
