defmodule Game2048.RightTest do
  use ExUnit.Case
  doctest Game2048.Right
  alias Game2048.Right

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

    assert expected == Right.do_right(input)
  end

  test "moves all elements to right" do
    input = [
      [nil, 2, nil, nil],
      [nil, nil, 2, nil],
      [nil, nil, nil, 2],
      [nil, 2, nil, nil]
    ]

    expected = [
      [nil, nil, nil, 2],
      [nil, nil, nil, 2],
      [nil, nil, nil, 2],
      [nil, nil, nil, 2]
    ]

    assert expected == Right.do_right(input)
  end

  test "moves and sums up elements to right" do
    input = [
      [nil, 2, 2, nil],
      [nil, nil, 2, nil],
      [nil, 2, nil, 2],
      [nil, 2, nil, nil]
    ]

    expected = [
      [nil, nil, nil, 4],
      [nil, nil, nil, 2],
      [nil, nil, nil, 4],
      [nil, nil, nil, 2]
    ]

    assert expected == Right.do_right(input)
  end
end
