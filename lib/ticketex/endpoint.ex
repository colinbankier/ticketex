defmodule Ticketex.Endpoint do
  use Phoenix.Endpoint, otp_app: :ticketex

  plug Plug.Static,
    at: "/", from: :ticketex

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_ticketex_key",
    signing_salt: "rDXrij6+",
    encryption_salt: "jaoR7jbe"

  plug :router, Ticketex.Router
end
