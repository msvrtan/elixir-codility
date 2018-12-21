defmodule Game2048.Board do
  @moduledoc """
  Documentation for 2048 board .
  """
  alias Game2048.Row

  def empty(size) do
    for _ <- 1..size, do: Row.empty(size)
  end
end
