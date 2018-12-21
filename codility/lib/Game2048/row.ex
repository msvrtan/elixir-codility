defmodule Game2048.Row do
  @moduledoc """
  Documentation for 2048 row .
  """

  def empty(size) do
    for _ <- 1..size, do: nil
  end

  #
  def left(row) do
    go_left(row)
    |> squash()
  end

  # Moves nil to the right
  defp go_left([nil | tail]) do
    go_left(tail) ++ [nil]
  end

  # Keeps value and recurses through tail
  defp go_left([head | tail]) do
    [head] ++ go_left(tail)
  end

  # When there is nothing more in the list
  defp go_left([]), do: []

  defp squash([head | [next | tail]]) when head == next and head != nil do
    [head + next] ++ squash(tail) ++ [nil]
  end

  defp squash([head | tail]) do
    [head] ++ squash(tail)
  end

  defp squash([]), do: []
end
