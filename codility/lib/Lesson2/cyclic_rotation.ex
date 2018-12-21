defmodule Lesson2.CyclicRotation do
  @moduledoc """
  Details can be found here: https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/
  """

  def rotate(input, k) do
    cnt = Enum.count(input)

    cond do
      k > cnt -> rotate(input, k - cnt)
      cnt == k -> input
      true -> Enum.slice(input, cnt - k, k) ++ Enum.slice(input, 0, cnt - k)
    end
  end
end
