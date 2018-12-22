defmodule Lesson3.FrogJmp do
  @moduledoc """
  Details can be found here: https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/
  """

  def calculate(start_position, end_position, step_size) do
    distance = end_position - start_position
    jump = div(distance, step_size)

    case rem(distance, step_size) do
      0 -> jump
      _ -> jump + 1
    end
  end
end
