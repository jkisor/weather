class ReportsWeather

  def initialize(determines_place, fetches_weather, outputs_weather)
    @determines_place = determines_place
    @fetches_weather  = fetches_weather
    @outputs_weather  = outputs_weather
  end

  def report
    place = @determines_place.determine

    weather = @fetches_weather.fetch(place)
    @outputs_weather.output(weather)
  end

end