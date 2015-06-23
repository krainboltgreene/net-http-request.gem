require "spec_helper"

RSpec.describe(Net::HTTP::Request::Headers::Header::Key) do
  let("header_key_fixture") do
    "Cache-Control"
  end

  let("header_fixture") do
    "#{header_key_fixture}: max-age=604800"
  end

  let("match") do
    header_fixture.match(Net::HTTP::Request::Header::PATTERN)[:key]
  end

  let("key") do
    described_class.new(key: match)
  end

  describe("#raw") do
    let("raw") do
      key.raw
    end

    it("should correctly extract the key") do
      expect(raw).to eq(header_key_fixture)
    end
  end
end
