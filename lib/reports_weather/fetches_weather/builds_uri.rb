require "./lib/values/place"

class BuildsURI

  def initialize(api_key)
    @api_key = api_key
  end

  def build(place)
    URI("https://api.openweathermap.org/data/2.5/weather?zip=#{place.zip},us&APPID=#{@api_key}&units=imperial")
  end

end
