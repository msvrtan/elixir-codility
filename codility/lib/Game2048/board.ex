defmodule Game2048.Board do
  @moduledoc """
  Documentation for 2048 board .
  """
  alias Game2048.Row

  def empty(size) do
    for _ <- 1..size, do: Row.empty(size)
  end

  def add_random_item(board) do
    cnt = Enum.count(board)

    board
    |> List.flatten()
    |> add_item_to_first_empty_position()
    |> Enum.chunk(cnt)
  end

  defp add_item_to_first_empty_position(list) do
    case list do
      [nil | tail] -> [2 | tail]
      [head | tail] -> [head | add_item_to_first_empty_position(tail)]
    end
  end

  def count_empty(board) do
    board
    |> List.flatten()
    |> Enum.count(&(&1 == nil))
  end
end
