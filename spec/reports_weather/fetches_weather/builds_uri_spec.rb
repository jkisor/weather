require "./lib/reports_weather/fetches_weather/builds_uri"

describe BuildsURI do

  subject { BuildsURI.new(api_key) }

  let(:api_key) { "API_KEY" }
  let(:place)   { Place.new(12345) }

  before { @result = subject.build(place) }

  it "returns the correct URI" do
    expect(@result.to_s).to eq("https://api.openweathermap.org/data/2.5/weather?zip=#{place.zip},us&APPID=#{api_key}&units=imperial")
  end

end