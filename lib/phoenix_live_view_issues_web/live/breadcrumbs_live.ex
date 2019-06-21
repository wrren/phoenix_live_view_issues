defmodule PhoenixLiveViewIssuesWeb.BreadcrumbsLive do
  use Phoenix.LiveView

  def mount(_session, socket),
    do: {:ok, socket}

  def render(assigns),
    do: PhoenixLiveViewIssuesWeb.BreadcrumbsView.render("show.html", assigns)
end
