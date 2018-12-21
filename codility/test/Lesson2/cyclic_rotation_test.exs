defmodule Lesson2.CyclicRotationTest do
  use ExUnit.Case
  doctest Lesson2.CyclicRotation
  import Lesson2.CyclicRotation

  test "no rotation returns input" do
    assert [2, 3, 4] == rotate([2, 3, 4], 0)
  end

  test "rotation by one element just moves the last one to the start" do
    assert [4, 2, 3] == rotate([2, 3, 4], 1)
  end

  test "rotation by 4 element just moves the last one to the start" do
    assert [4, 2, 3] == rotate([2, 3, 4], 4)
  end

  test "rotation by full size returns result same as input" do
    assert [2, 3, 4] == rotate([2, 3, 4], 3)
  end

  test "rotation by multiplier of full size returns result same as input" do
    assert [2, 3, 4] == rotate([2, 3, 4], 6)
  end

  test "codility values" do
    assert [9, 7, 6, 3, 8] == rotate([3, 8, 9, 7, 6], 3)
  end
end
