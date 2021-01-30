defmodule Game2048.GameTest do
  use ExUnit.Case
  doctest Game2048.Game
  alias Game2048.Game

  test "start of the game will have first 2 positions set" do
    expected = [
      [2, 2, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.start()
  end

  test "first left" do
    initial = Game.start()

    expected = [
      [4, 2, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "first right" do
    initial = Game.start()

    expected = [
      [2, nil, nil, 4],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.right(initial)
  end

  test "first up" do
    initial = Game.start()

    expected = [
      [2, 2, 2, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.up(initial)
  end

  test "first down" do
    initial = Game.start()

    expected = [
      [2, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [2, 2, nil, nil]
    ]

    assert expected == Game.down(initial)
  end

  test "second left" do
    initial =
      Game.start()
      |> Game.left()

    expected = [
      [4, 2, 2, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "third left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()

    expected = [
      [4, 4, 2, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "forth left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [8, 2, 2, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "5th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [8, 4, 2, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "6th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [8, 4, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "7th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [8, 4, 4, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "8th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [8, 8, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "9th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [16, 4, 2, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "10th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [16, 4, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "11th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [16, 4, 4, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "12th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [16, 8, 2, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "13th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [16, 8, 4, 2],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end

  test "14th left" do
    initial =
      Game.start()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()
      |> Game.left()

    expected = [
      [16, 8, 4, 2],
      [2, nil, nil, nil],
      [nil, nil, nil, nil],
      [nil, nil, nil, nil]
    ]

    assert expected == Game.left(initial)
  end
end
