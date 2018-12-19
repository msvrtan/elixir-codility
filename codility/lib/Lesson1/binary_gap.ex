defmodule Lesson1.BinaryGap do
  @moduledoc """
  Details can be found here: https://app.codility.com/programmers/lessons/1-iterations/binary_gap/
  """

  def calculate(number) do
    without_trailing_zeros = remove_trailing_zeros(number)

    {_, found_maximum} = skip_ones(without_trailing_zeros, 0)
    found_maximum
  end

  def skip_ones(number, binary_gap) when number > 1 do
    case rem(number, 2) do
      1 -> skip_ones(div(number - 1, 2), binary_gap)
      0 -> skip_zeros(div(number, 2), binary_gap, 1)
    end
  end

  def skip_ones(number, binary_gap) when number <= 1 do
    {number, binary_gap}
  end

  def skip_zeros(number, binary_gap, current) when number > 0 do
    case rem(number, 2) do
      1 ->
        cond do
          current > binary_gap -> skip_ones(number, current)
          true -> skip_ones(number, binary_gap)
        end

      0 ->
        skip_zeros(div(number, 2), binary_gap, current + 1)
    end
  end

  def remove_trailing_zeros(number) when number > 0 do
    case rem(number, 2) do
      1 -> number
      0 -> remove_trailing_zeros(div(number, 2))
    end
  end

  def remove_trailing_zeros(0), do: 0
end
