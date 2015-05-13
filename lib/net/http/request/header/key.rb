module Net
  class HTTP
    class Request
      class Header
        class Key
          PATTERN = /^(?<key>.+):/

          def initialize(key:)
            @raw = key
          end

          def raw
            @raw
          end
        end
      end
    end
  end
end
