defmodule Lesson2.OddOccurrencesInArray do
  @moduledoc """
  Details can be found here: https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
  """

  def calculate(input) do
    found = process(input, [])

    List.last(found)
  end

  defp process([head | tail], found) do
    cond do
      Enum.member?(found, head) -> process(tail, remove_element(found, head))
      true -> process(tail, found ++ [head])
    end
  end

  defp process([], found) do
    found
  end

  defp remove_element(list, element) do
    Enum.filter(list, fn x -> element != x end)
  end
end
