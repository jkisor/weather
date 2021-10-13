require "./lib/reports_weather/fetches_weather/parses_data"

describe ParsesData do

  subject { ParsesData }

  let(:data) do
    { "main" => { "temp" => 66.66 } }.to_json
  end

  before { @result = subject.parse(data) }

  it "returns weather" do
    expect(@result).to eq(Weather.new(66))
  end

end