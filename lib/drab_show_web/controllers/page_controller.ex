defmodule DrabShowWeb.PageController do
  use DrabShowWeb, :controller
  use Drab.Controller

  def index(conn, _params) do
    render conn, "index.html",
    welcome_text: "Welcome to Phoenix!"
  end
end
