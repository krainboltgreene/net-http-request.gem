require "spec_helper"

RSpec.describe(Net::HTTP::Request::Headers) do
  let("headers") do
    described_class.new(raw: raw)
  end

  describe("#collection") do
    let("collection") do
      headers.collection
    end

    it("should contain 11 objects") do
      expect(data.size).to eq(11)
    end

    it("should be all header objects") do
      expect(data).to be_all do |object|
        object.kind_of?(Net::HTTP::Request::Header)
      end
    end
  end
end
