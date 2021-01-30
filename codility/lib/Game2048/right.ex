defmodule Game2048.Right do
  @moduledoc """
  Documentation for pressing right in 2048 game.
  """

  alias Game2048.Row
  #
  def do_right(board) do
    board
    |> Enum.map(fn x -> x |> Enum.reverse() |> Row.left() |> Enum.reverse() end)
  end
end
