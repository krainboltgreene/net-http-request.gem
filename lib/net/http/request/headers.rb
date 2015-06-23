module Net
  class HTTP
    class Request
      class Headers
        include Enumerable

        def initialize(raw:)
          @raw = raw
          @collection = @raw.map do |header|
            Header.new(raw: item)
          end
        end

        def raw
          @raw
        end

        def each(&block)
          @collection.each(&block)
        end

        require_relative "headers/header"
      end
    end
  end
end
