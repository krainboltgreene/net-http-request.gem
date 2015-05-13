module Net
  class HTTP
    class Request
      class RequestLine
        PATTERN =
        def initialize(request_line:)
          @raw = request_line
        end

        require_relative "request_line/version"
      end
    end
  end
end
