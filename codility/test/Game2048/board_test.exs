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

  test "adds random item to empty board" do
    board = Board.empty(4)

    assert [
             [2, nil, nil, nil],
             [nil, nil, nil, nil],
             [nil, nil, nil, nil],
             [nil, nil, nil, nil]
           ] == Board.add_random_item(board)
  end

  test "adds random item to next empty space" do
    board = [
      [2, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert [
             [2, 2, nil, nil],
             [nil, nil, nil, nil],
             [nil, nil, nil, nil],
             [nil, nil, nil, nil]
           ] == Board.add_random_item(board)
  end

  test "count number of empty items on empty board" do
    board = Board.empty(4)

    assert 16 == Board.count_empty(board)
  end

  test "count number of empty items on small empty board" do
    board = Board.empty(2)

    assert 4 == Board.count_empty(board)
  end
end
