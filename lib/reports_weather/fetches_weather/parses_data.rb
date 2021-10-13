require "json"
require "./lib/values/weather"

class ParsesData

  def self.parse(data)
    parsed = JSON.parse(data)

    temperature = parsed["main"]["temp"].to_i

    Weather.new(temperature)
  end

end
