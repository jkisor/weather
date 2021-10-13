require "dotenv/load"

require "./lib/reports_weather/determine_place"

require "./lib/reports_weather/fetches_weather"
require "./lib/reports_weather/fetches_weather/builds_uri"
require "./lib/reports_weather/fetches_weather/requests_data"
require "./lib/reports_weather/fetches_weather/parses_data"
require "./lib/reports_weather/outputs_weather"
require "./lib/reports_weather"

raise "Missing API_KEY from .env" if ENV['API_KEY'].nil?

builds_uri    = BuildsURI.new(ENV['API_KEY'])
requests_data = RequestsData
parses_data   = ParsesData
fetches_weather = FetchesWeather.new(
  builds_uri,
  requests_data,
  parses_data
)

ReportsWeather.new(
  DeterminePlace,
  fetches_weather,
  OutputsWeather
).report