module Net
  class HTTP
    class Request
      class Parser < Parslet::Parser
        require_relative "parser/characters"
        require_relative "parser/elements"
        require_relative "parser/uri"

        root :request

        # Creates a matcher for the given characters.
        #
        # @param [Array<String>] chars
        #   The characters to match.
        #
        def charset(*chars)
          match[chars.map { |c| Regexp.escape(c) }.join]
        end
        protected :charset
      end
    end
  end
end
