require "spec_helper"

RSpec.describe(Net::HTTP::Request::Header) do
  let("fixture") do
    "Cache-Control: max-age=604800\n"
  end

  let("header") do
    described_class.new(header: fixture)
  end

  describe("#key") do
    let("key") do
      header.key
    end

    it("should be a Key") do
      expect(key).to be_a(Net::HTTP::Request::Header::Key)
    end
  end

  describe("#value") do
    let("value") do
      header.value
    end

    it("should be a Value") do
      expect(value).to be_a(Net::HTTP::Request::Header::Value)
    end
  end
end
