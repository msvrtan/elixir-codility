defmodule Game2048.Row do
  @moduledoc """
  Documentation for 2048 row .
  """

  def empty(size) do
    for _ <- 1..size, do: nil
  end
end
