class OutputsWeather

  def self.output(weather)
    lines = [
      "-" * 10,
      "Date: #{Time.now.strftime("%m/%d/%Y")}",
      "Time: #{Time.now.strftime("%I:%M %p")}",
      "Temp: #{weather.temperature}F",
      "-" * 10
    ]
    text = lines.join("\n")

    puts text
  end

end