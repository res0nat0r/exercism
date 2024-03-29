defmodule Lasagna do
  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(time), do: expected_minutes_in_oven() - time

  def preparation_time_in_minutes(layers), do: 2 * layers

  def total_time_in_minutes(layers, time_in_oven) do
    preparation_time_in_minutes(layers) + expected_minutes_in_oven() -
      remaining_minutes_in_oven(time_in_oven)
  end

  def alarm(), do: "Ding!"
end
