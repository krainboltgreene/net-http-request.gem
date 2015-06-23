module Net
  class HTTP
    class Request
      class Headers
        class Header
          class Key
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
