defmodule Game2048.DownTest do
  use ExUnit.Case
  doctest Game2048.Down
  alias Game2048.Down

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

    assert expected == Down.do_down(input)
  end

  test "all elements are already on the bottom so there are no changes" do
    input = [
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [2, 2, 2, 2]
    ]

    expected = [
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [2, 2, 2, 2]
    ]

    assert expected == Down.do_down(input)
  end

  test "moves all elements down" do
    input = [
      [nil, 2, nil, nil],
      [nil, nil, 2, nil],
      [nil, nil, nil, 2],
      [2, nil, nil, nil]
    ]

    expected = [
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [2, 2, 2, 2]
    ]

    assert expected == Down.do_down(input)
  end

  test "moves and sums down elements down" do
    input = [
      [nil, 2, 2, nil],
      [nil, nil, 2, nil],
      [nil, 2, nil, nil],
      [2, nil, nil, nil]
    ]

    expected = [
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [2, 4, 4, nil]
    ]

    assert expected == Down.do_down(input)
  end
end
