defmodule Game2048.UpTest do
  use ExUnit.Case
  doctest Game2048.Up
  alias Game2048.Up

  test "empty board has no changes" do
    input = [
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    expected = [
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Up.do_up(input)
  end

  test "all elements are already on top so there are no changes" do
    input = [
      [2, 2, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    expected = [
      [2, 2, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Up.do_up(input)
  end

  test "moves all elements up" do
    input = [
      [nil, 2, nil, nil],
      [nil, nil, 2, nil],
      [nil, nil, nil, 2],
      [2, nil, nil, nil]
    ]

    expected = [
      [2, 2, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Up.do_up(input)
  end

  test "moves and sums up elements up" do
    input = [
      [nil, 2, 2, nil],
      [nil, nil, 2, nil],
      [nil, 2, nil, nil],
      [2, nil, nil, nil]
    ]

    expected = [
      [2, 4, 4, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Up.do_up(input)
  end
end
