module Net
  class HTTP
    class Request
      class Header
        PATTERN = "\n"

        def initialize(header:)
          @raw = header
          @match = @raw.match(/#{Key::PATTERN}#{Value::PATTERN}/)
          @key = Key.new(key: @match["key"])
          @value = Value.new(value: @match["value"])
        end

        def key
          @key
        end

        def value
          @value
        end

        require_relative "header/key"
        require_relative "header/value"
      end
    end
  end
end
