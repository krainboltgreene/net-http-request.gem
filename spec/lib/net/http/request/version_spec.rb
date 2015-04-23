require "spec_helper"

describe Net::HTTP::Request::VERSION do
  it "should be a string" do
    expect(Net::HTTP::Request::VERSION).to be_kind_of(String)
  end
end
