defmodule Lesson3.FrogJmpTest do
  use ExUnit.Case
  doctest Lesson3.FrogJmp
  import Lesson3.FrogJmp

  test "exactly one jump" do
    assert 1 = calculate(10, 20, 10)
  end

  test "exactly two jumps" do
    assert 2 = calculate(10, 30, 10)
  end

  test "in one jump" do
    assert 1 = calculate(10, 19, 10)
  end

  test "in two jumps" do
    assert 2 = calculate(10, 29, 10)
  end

  describe "in ten jumps" do
    test "just above 9th jump" do
      assert 10 = calculate(10, 101, 10)
    end

    test "almost 10th jump" do
      assert 10 = calculate(10, 109, 10)
    end

    test "exactly 10th jump" do
      assert 10 = calculate(10, 110, 10)
    end
  end
end
