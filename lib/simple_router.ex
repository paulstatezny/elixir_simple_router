defmodule SimpleRouter do
  alias __MODULE__

  def init(opts) do
    opts
  end

  def call(conn, opts) do
    conn
    |> Plug.Conn.send_resp(200, "Hello World")
  end

  def start(routes) do
    {:ok, _} = Plug.Adapters.Cowboy.http(SimpleRouter, [])
  end
end
