defmodule GrellydSiteWeb.ConnController do
  use GrellydSiteWeb, :controller

  def list(conn, _params) do
    render conn, "you.html"
  end
end
