module Net
  class HTTP
    class Request
      class ProtocolVersion
        PATTERN = /HTTP-name "/" DIGIT "." DIGIT/
        def initialize(protocol_version:)
          @request = request
        end
      end
    end
  end
end
