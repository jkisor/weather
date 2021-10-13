require "./lib/reports_weather"
require "./lib/values/place"
require "./lib/values/weather"

describe ReportsWeather do
  subject { ReportsWeather.new(determines_place, fetches_weather, outputs_weather) }

  let(:determines_place) { double(:determine => place) }
  let(:place)            { Place.new("20175") }

  let(:fetches_weather) { double(:fetch => weather) }
  let(:weather)         { Weather.new(69) }

  let(:outputs_weather) { double(:output => nil) }

  before { subject.report }

  it "determines place" do
    expect(determines_place).to have_received(:determine)
  end

  it "fetches weather" do
    expect(fetches_weather).to have_received(:fetch).with(place)
  end

  it "outputs weather" do
    expect(outputs_weather).to have_received(:output).with(weather)
  end
end