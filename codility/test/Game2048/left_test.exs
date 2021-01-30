defmodule Game2048.LeftTest do
  use ExUnit.Case
  doctest Game2048.Left
  alias Game2048.Left

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

    assert expected == Left.do_left(input)
  end

  test "moves all elements to left" do
    input = [
      [nil, 2, nil, nil],
      [nil, nil, 2, nil],
      [nil, nil, nil, 2],
      [nil, 2, nil, nil]
    ]

    expected = [
      [2, nil, nil, nil],
      [2, nil, nil, nil],
      [2, nil, nil, nil],
      [2, nil, nil, nil]
    ]

    assert expected == Left.do_left(input)
  end

  test "moves and sums up elements to left" do
    input = [
      [nil, 2, 2, nil],
      [nil, nil, 2, nil],
      [nil, 2, nil, 2],
      [nil, 2, nil, nil]
    ]

    expected = [
      [4, nil, nil, nil],
      [2, nil, nil, nil],
      [4, nil, nil, nil],
      [2, nil, nil, nil]
    ]

    assert expected == Left.do_left(input)
  end
end
