require "./lib/reports_weather/fetches_weather"

describe FetchesWeather do
  subject { FetchesWeather.new(builds_uri, requests_data, parses_data) }

  let(:builds_uri) { double(:build => uri) }
  let(:uri) { URI("https://api.example.com?param1=value1") }

  let(:requests_data) { double(:request => data) }
  let(:data) { double }

  let(:parses_data) { double(:parse => weather) }
  let(:weather) { Weather.new(69) }

  let(:place) { Place.new("12345") }

  before { @result = subject.fetch(place) }

  it "builds url" do
    expect(builds_uri).to have_received(:build).with(place)
  end

  it "requests data" do
    expect(requests_data).to have_received(:request).with(uri)
  end

  it "parses data" do
    expect(parses_data).to have_received(:parse).with(data)
  end

  it "returns weather" do
    expect(@result).to eq(weather)
  end

end