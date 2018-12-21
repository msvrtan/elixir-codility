defmodule Lesson1.BinaryGapTest do
  use ExUnit.Case
  doctest Lesson1.BinaryGap
  import Lesson1.BinaryGap

  describe "no binary gap" do
    test "for input without any 1's" do
      assert 0 == calculate(0b0)
    end

    test "for input without any 0's" do
      assert 0 == calculate(0b1)
    end

    test "for input without closing 1's" do
      assert 0 == calculate(0b10)
    end
  end

  describe "removes" do
    test "trailing zero" do
      assert 0b1 == remove_trailing_zeros(0b10)
    end

    test "both trailing zeros" do
      assert 0b1 == remove_trailing_zeros(0b100)
    end

    test "all 7 trailing zeros" do
      assert 0b1 == remove_trailing_zeros(0b10000000)
    end
  end

  describe "binary gap of size 1 found" do
    test "for number 5" do
      assert 1 == calculate(0b101)
    end

    test "for number 11" do
      assert 1 == calculate(0b1011)
    end

    test "for number 17" do
      assert 1 == calculate(0b11011)
    end
  end

  describe "binary gap of size 2 found" do
    test "for number 9" do
      assert 2 == calculate(0b1001)
    end

    test "for number 19" do
      assert 2 == calculate(0b10011)
    end

    test "for number 35" do
      assert 2 == calculate(0b110011)
    end
  end

  test "binary gap is 1" do
    assert 1 == calculate(0b10101)
  end

  test "binary gap is 2" do
    assert 2 == calculate(0b1001001)
  end

  test "binary gap is 4" do
    assert 4 == calculate(0b100001001)
  end

  test "binary gap is 5" do
    assert 5 == calculate(0b1001000001)
  end
end
