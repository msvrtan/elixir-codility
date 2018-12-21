defmodule Game2048.RowTest do
  use ExUnit.Case
  doctest Game2048.Row
  alias Game2048.Row

  test "empty row will have 2 nil elements" do
    assert [nil, nil] == Row.empty(2)
  end

  test "empty row will have 4 nil elements" do
    assert [nil, nil, nil, nil] == Row.empty(4)
  end

  describe "when going left there are no changes to the row" do
    test "if row is empty" do
      assert [nil, nil, nil, nil] == Row.left([nil, nil, nil, nil])
    end

    test "if only value is already on the left" do
      assert [2, nil, nil, nil] == Row.left([2, nil, nil, nil])
    end

    test "if all values are already on the left" do
      assert [2, 4, nil, nil] == Row.left([2, 4, nil, nil])
    end

    test "if there is no space to move items left" do
      assert [2, 4, 2, 4] == Row.left([2, 4, 2, 4])
    end
  end

  describe "when going left existing values will be moved to left" do
    test "if there is only one" do
      assert [2, nil, nil, nil] == Row.left([nil, nil, 2, nil])
    end

    test "if multiple ones found" do
      assert [2, 4, nil, nil] == Row.left([2, nil, nil, 4])
    end
  end

  describe "when going left combines touching values" do
    test "if they are on the left" do
      assert [4, nil, nil, nil] == Row.left([2, 2, nil, nil])
    end

    test "if there is space between them" do
      assert [4, nil, nil, nil] == Row.left([2, nil, 2, nil])
    end

    test "if they are on the right" do
      assert [4, nil, nil, nil] == Row.left([nil, nil, 2, 2])
    end

    test "if there are multiple ones" do
      assert [4, 16, nil, nil] == Row.left([2, 2, 8, 8])
    end

    test "if touching ones will match" do
      assert [4, 4, nil, nil] == Row.left([2, 2, 2, 2])
    end

    test "if only some of them can be matched" do
      assert [4, 4, 4, nil] == Row.left([4, 2, 2, 4])
    end
  end
end
