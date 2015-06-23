require "parslet"

module Net
  class HTTP
    class Request

      def initialize(raw:)
        @raw = Request::Parser.parse(raw)
      end

      def raw
        @raw
      end

      require_relative "request/headers"
      require_relative "request/parser"
      require_relative "request/version"
    end
  end
end
