defmodule Ticketex.ProjectsController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end