require "spec_helper"

RSpec.describe(Net::HTTP::Request::Headers::Header::Value) do
  let("header_value_fixture") do
    "max-age=604800"
  end
  let("header_fixture") do
    "Cache-Control: #{header_value_fixture}"
  end

  let("match") do
    header_fixture.match(Net::HTTP::Request::Header::PATTERN)[:value]
  end

  let("value") do
    described_class.new(value: match)
  end

  describe("#raw") do
    let("raw") do
      key.raw
    end

    it("should correctly extract the key") do
      expect(raw).to eq(header_value_fixture)
    end
  end
end
