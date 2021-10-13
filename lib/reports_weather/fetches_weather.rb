require "./lib/values/place"
require "./lib/values/weather"

class FetchesWeather

  def initialize(builds_uri, requests_data, parses_data)
    @builds_uri    = builds_uri
    @requests_data = requests_data
    @parses_data   = parses_data
  end

  def fetch(place)
    uri  = @builds_uri.build(place)
    data = @requests_data.request(uri)
    @parses_data.parse(data)
  end

end