module Net
  class HTTP
    class Request
      class Header
        class Value
          PATTERN = /\s*(?<value>.+)\n?$/

          def initialize(value:)
            @raw = value
          end

          def raw
            @raw
          end
        end
      end
    end
  end
end
