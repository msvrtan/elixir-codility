defmodule Game2048.Game do
  @moduledoc """
  Documentation for 2048 game .
  """
  alias Game2048.Board
  alias Game2048.Left
  alias Game2048.Right
  alias Game2048.Up
  alias Game2048.Down

  def start() do
    Board.new(4)
  end

  def left(board) do
    Left.do_left(board)
    |> Board.add_random_item()
  end

  def right(board) do
    Right.do_right(board)
    |> Board.add_random_item()
  end

  def up(board) do
    Up.do_up(board)
    |> Board.add_random_item()
  end

  def down(board) do
    Down.do_down(board)
    |> Board.add_random_item()
  end
end
