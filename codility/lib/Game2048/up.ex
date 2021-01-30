defmodule Game2048.Up do
  @moduledoc """
  Documentation for pressing up in 2048 game.
  """

  alias Game2048.Row
  alias Game2048.Transpose
  #
  def do_up(board) do
    board
    |> Transpose.transpose()
    |> Enum.map(fn x -> x |> Row.left() end)
    |> Transpose.transpose()
  end
end
