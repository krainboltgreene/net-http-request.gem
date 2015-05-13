module Net
  class HTTP
    class Request
      class Authentication
        PATTERN = /(?<key>.+):(?<secret>.+)/
        KEY_KEY = "key"
        SECRET_KEY = "secret"

        def initialize(authentication:)
          @raw = authentication
          @match = @raw.match(PATTERN)
          @key = @raw[KEY_KEY]
          @secret = @raw[SECRET_KEY]
        end

        def key
          @key
        end

        def secret
          @secret
        end
      end
    end
  end
end
