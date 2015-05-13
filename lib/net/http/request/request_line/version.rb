module Net
  class HTTP
    class Request
      class RequestLine
        class Version
          NUMBER_DELIMITER = "."
          def initialize(request:)
            @request = @request
            @head =
            @version = @head.first
            @numbers = @version.split(NUMBER_DELIMITER)
            @major = @numbers.first
            @minor = @numbers.last
          end

          def major
            @major
          end

          def minor
            @minor
          end
        end
      end
    end
  end
end
