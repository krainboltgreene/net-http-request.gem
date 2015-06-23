require "spec_helper"

RSpec.describe(Net::HTTP::Request::Parser) do
  include_context "a real request"

  let("parser") do
    described_class.new
  end

  describe("#parse") do
    let("parse") do
      parser.parse(fixture)
    end

    it "should return a Hash" do
      expect(parse).to be_kind_of(Hash)
    end
  end
end
