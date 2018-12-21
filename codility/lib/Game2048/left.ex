defmodule Game2048.Left do
  @moduledoc """
  Documentation for pressing left in 2048 game.
  """

  alias Game2048.Row
  #
  def do_left(board) do
    board
    |> Enum.map(fn x -> Row.left(x) end)
  end
end
