require "spec_helper"

RSpec.describe(Net::HTTP::Request::Headers::Header) do
  let("header_fixture") do
    "Cache-Control: max-age=604800"
  end

  let("header") do
    described_class.new(raw: raw)
  end

  describe("#key") do
    let("key") do
      header.key
    end

    it("should be a Key") do
      expect(key).to be_a(described_class.const_get("Key"))
    end
  end

  describe("#value") do
    let("value") do
      header.value
    end

    it("should be a Value") do
      expect(value).to be_a(described_class.const_get("Value"))
    end
  end
end
