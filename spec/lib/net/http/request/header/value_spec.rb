require "spec_helper"

RSpec.describe(Net::HTTP::Request::Header::Value) do
  let("fixture") do
    "max-age=604800"
  end

  let("value") do
    described_class.new(value: fixture)
  end

  describe("#raw") do
    let("raw") do
      value.raw
    end

    it("should correctly pull out the value") do
      expect(raw).to eq("max-age=604800")
    end
  end
end
