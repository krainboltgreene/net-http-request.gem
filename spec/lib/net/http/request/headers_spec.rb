require "spec_helper"

RSpec.describe(Net::HTTP::Request::Headers) do
  let("fixture") do
"""
Accept-Ranges: bytes
Cache-Control: max-age=604800
Content-Type: text/html
Date: Thu, 30 Apr 2015 05:34:18 GMT
Etag: \"359670651\"
Expires: Thu, 07 May 2015 05:34:18 GMT
Last-Modified: Fri, 09 Aug 2013 23:54:35 GMT
Server: ECS (fty/2FA4)
X-Cache: HIT
x-ec-custom-error: 1
Content-Length: 1270
"""
  end

  let("headers") do
    described_class.new(headers: fixture)
  end

  describe("#data") do
    let("data") do
      headers.data
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
