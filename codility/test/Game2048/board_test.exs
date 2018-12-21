defmodule Game2048.BoardTest do
  use ExUnit.Case
  doctest Game2048.Board
  alias Game2048.Board

  test "empty board will have 2 rows with 2 nil elements" do
    assert [[nil, nil], [nil, nil]] = Board.empty(2)
  end

  test "empty board will have 4 rows with 4 nil elements" do
    assert [
             [nil, nil, nil, nil],
             [nil, nil, nil, nil],
             [nil, nil, nil, nil],
             [nil, nil, nil, nil]
           ] == Board.empty(4)
  end
end
