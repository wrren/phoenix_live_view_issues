defmodule PhoenixLiveViewIssuesWeb.Router do
  use PhoenixLiveViewIssuesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Phoenix.LiveView.Flash
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixLiveViewIssuesWeb do
    pipe_through :browser

    live "/test", TestLive
    live "/",     PageLive
  end
end
