module Net
  class HTTP
    class Request
      class Headers
        include Enumerable

        PATTERN = /(?<query>.+)?/

        def initialize(headers:)
          @raw = headers
          @collection = headers.strip.split(Header::PATTERN)
          @data = map do |item|
            Header.new(header: item)
          end
        end

        def each(&block)
          @collection.each(&block)
        end

        def collection
          @collection
        end

        def data
          @data
        end
      end
    end
  end
end
