require Logger

defmodule ImageBoard.BoardChannel do
  use Phoenix.Channel

  def join("board:a", _message, socket) do
    {:ok, socket}
  end

  def join("board:" <> _random_board_id, socket) do
    {:error, %{reason: "Unathorized"}}
  end

  def handle_in("new_message", %{"body" => body}, socket) do
    broadcast! socket, "new_message", %{body: body}

    {:noreply, socket}
  end
end
