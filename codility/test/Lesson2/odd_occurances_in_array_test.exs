defmodule Lesson2.OddOccurrencesInArrayTest do
  use ExUnit.Case
  doctest Lesson2.OddOccurrencesInArray
  import Lesson2.OddOccurrencesInArray

  test "only 1 item" do
    assert 1 == calculate([1])
  end

  test "simple 1 pair" do
    assert 1 == calculate([2, 2, 1])
  end

  test "simple 1 pair with odd in the begginning" do
    assert 1 == calculate([1, 2, 2])
  end

  test "simple 1 pair with odd in the middle" do
    assert 1 == calculate([2, 1, 2])
  end

  test "codility example" do
    assert 7 == calculate([9, 3, 9, 3, 9, 7, 9])
  end
end
