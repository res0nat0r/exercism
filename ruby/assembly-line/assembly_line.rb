# frozen_string_literal: true

class AssemblyLine
  def initialize(speed)
    @speed = speed

    @error_rate = {
      1..4 => 1,
      5..8 => 0.9,
      9 => 0.8,
      10 => 0.77
    }
  end

  def production_rate_per_hour
    221 * @speed * @error_rate.select { |e| e === @speed }.values.first
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
