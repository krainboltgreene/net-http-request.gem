module Net
  class HTTP
    class Request
      class Body
        PATTERN = /\r.*\z/

        def initialize(body:, deserializer: nil)
          @raw = body
          @deserializer = deserializer
          @data = @deserializer.load(@raw) if @deserializer
        end

        def raw
          @raw
        end

        def data
          @data || @raw
        end
      end
    end
  end
end
