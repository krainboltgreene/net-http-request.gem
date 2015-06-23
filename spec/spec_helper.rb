require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "pry"
require "rspec"
require "net-http-request"


RSpec.shared_context "a real request" do
  let("verb_fixture") do
    "POST"
  end

  let("path_fixture") do
    "/posts"
  end

  let("query_fixture") do
    "include=author&fields[post]=title"
  end

  let("protocol_fixture") do
    "HTTP/1.1"
  end

  let("headers_fixture") do
<<-HEADERS
Host: api.example.com
Date: Thu, 30 Apr 2015 05:34:18 GMT
Expires: Thu, 07 May 2015 05:34:18 GMT
Last-Modified: Fri, 09 Aug 2013 23:54:35 GMT
Cache-Control: max-age=604800
Etag: "359670651"
Content-Type: application/example.api+json; apiv=1 charset=utf-8
Accept: application/example.api+json; apiv=1 charset=utf-8
Accept-Ranges: bytes
Content-Length: 0
HEADERS
  end

  let("body_fixture") do
<<-BODY
{
  'posts': {
    'title': 'The title',
    'body': 'The body.'
  }
}
BODY
  end

  let("fixture") do
<<-REQUEST
#{verb_fixture} #{path_fixture}?#{query_fixture} #{protocol_fixture}
#{headers_fixture}
#{body_fixture}
REQUEST
  end
end
