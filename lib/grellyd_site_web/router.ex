defmodule GrellydSiteWeb.Router do
  use GrellydSiteWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GrellydSiteWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/blog", PageController, :blog
    scope "about" do
      get "/", PageController, :about
      get "/you", ConnController, :list
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", GrellydSiteWeb do
  #   pipe_through :api
  # end
end
