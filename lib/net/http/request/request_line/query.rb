module Net
  class HTTP
    class Request
      class RequestLine
        class Query
          PATTERN = /(\?.+)?/

          def initialize(query:)
            @raw = query

          end
        end
      end
    end
  end
end
