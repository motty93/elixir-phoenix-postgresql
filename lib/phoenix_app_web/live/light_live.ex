defmodule PhoenixAppWeb.LightLive do
  @moduledoc false
  use PhoenixAppWeb, :live_view

  # params: 現在のクエリ
  # session: プライベートセッションデータ
  # socket: websocketの構造体
  # LiveViewのプロセスを初期化
  def mount(_params, _session, socket) do
    socket = assign(socket, :brightness, 10)

    # {:ok, assing(socket, :brightness, 10)}
    # とインライン化されることがよくある
    {:ok, socket}
  end

  def handle_event("on", _, socket) do
    socket = assign(socket, :brightness, 100)

    {:noreply, socket}
  end

  def handle_event("off", _, socket) do
    socket = assign(socket, :brightness, 0)

    {:noreply, socket}
  end

  def handle_event("down", _, socket) do
    # brightness = socket.assigns.brightness - 10
    # socket = assign(socket, :brightness, brightness)
    socket = update(socket, :brightness, &max(&1 - 10, 0))

    {:noreply, socket}
  end

  def handle_event("up", _, socket) do
    # brightness = socket.assigns.brightness + 10
    # socket = assign(socket, :brightness, brightness)
    # socket = update(socket, :brightness, fn b -> b + 10 end)
    socket = update(socket, :brightness, &min(&1 + 10, 100))

    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Front Porch Light</h1>
    <div class="meter">
      <span style={"width: #{@brightness}%"}>
        <%= @brightness %>%
      </span>
    </div>
    <div>
      <button phx-click="off">
        Off
      </button>
      <button phx-click="on">
        On
      </button>
    </div>
    <div>
        <button phx-click="down">
        Down
      </button>
      <button phx-click="up">
        Up
      </button>
    </div>
    """
  end
end
