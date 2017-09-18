defmodule GrellydSiteWeb.PageController do
  use GrellydSiteWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
  def blog(conn, _params) do
    render conn, "blog.html"
  end
  
  def about(conn, _params) do
    render conn, "about.html"
  end
end
