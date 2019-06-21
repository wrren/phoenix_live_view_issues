defmodule PhoenixLiveViewIssuesWeb.PageLive do
  use Phoenix.LiveView

  def mount(%{path_params: %{"page" => page}}, socket),
    do: {:ok, assign(socket, :page, page)}
  def mount(_session, socket),
    do: {:ok, assign(socket, :page, "default")}

  def render(assigns),
    do: PhoenixLiveViewIssuesWeb.PageView.render("index.html", assigns)
end
