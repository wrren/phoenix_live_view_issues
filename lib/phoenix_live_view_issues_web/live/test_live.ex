defmodule PhoenixLiveViewIssuesWeb.TestLive do
  use Phoenix.LiveView
  require Logger

  def mount(_session, socket) do
    Logger.info "Mounted TestLive"
    {:ok, socket}
  end

  def render(assigns),
    do: PhoenixLiveViewIssuesWeb.TestView.render("index.html", assigns)
end
