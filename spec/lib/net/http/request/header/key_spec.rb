require "spec_helper"

RSpec.describe(Net::HTTP::Request::Header::Key) do
  let("fixture") do
    "Cache-Control"
  end

  let("key") do
    described_class.new(key: fixture)
  end

  describe("#raw") do
    let("raw") do
      key.raw
    end

    it("should correctly extract the key") do
      expect(raw).to eq("Cache-Control")
    end
  end
end
