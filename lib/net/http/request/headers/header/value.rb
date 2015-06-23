module Net
  class HTTP
    class Request
      class Headers
        class Header
          class Value
            def initialize(raw:)
              @raw = raw
            end

            def raw
              @raw
            end
          end
        end
      end
    end
  end
end
