module Net
  class HTTP
    class Request
      class Headers
        class Header
          def initialize(raw:)
            @raw = raw
            @key = Key.new(raw: @raw["key"])
            @value = Value.new(raw: @raw["value"])
          end

          def to_h
            @raw
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
end
