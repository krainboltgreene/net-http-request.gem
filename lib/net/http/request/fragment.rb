module Net
  class HTTP
    class Request
      class Fragment
        PATTERN = /(?<fragment>#.+)?/

        def initialize(fragment:)
          @raw = fragment
          @identifier = @raw.gsub(/^#/, "")
        end

        def raw
          @raw
        end

        def identifier
          @identifier
        end
      end
    end
  end
end
