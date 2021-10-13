class Weather
  attr_reader :temperature

  def initialize(temperature)
    @temperature = temperature
  end

  def ==(other)
    @temperature == other.temperature
  end

end