defmodule Game2048.Down do
  @moduledoc """
  Documentation for pressing down in 2048 game.
  """

  alias Game2048.Row
  alias Game2048.Transpose
  #
  def do_down(board) do
    board
    |> Enum.reverse()
    |> Transpose.transpose()
    |> Enum.map(fn x -> x |> Row.left() end)
    |> Transpose.transpose()
    |> Enum.reverse()
  end
end
