defmodule Game2048.RowTest do
  use ExUnit.Case
  doctest Game2048.Row
  alias Game2048.Row

  test "empty row will have 2 nil elements" do
    assert [nil, nil] = Row.empty(2)
  end

  test "empty row will have 4 nil elements" do
    assert [nil, nil, nil, nil] = Row.empty(4)
  end
end
