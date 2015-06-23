module Net
  class HTTP
    class Request
      class Parser < Parslet::Parser
        rule(:scheme) do
          str('h') >> str('t') >> str('t') >> str('p') >> str('s').maybe
        end

        rule(:host) do
          (alnum | charset('-', '_', '.')).repeat(1)
        end

        rule(:userinfo) do
          (unreserved | escape | charset(';', ':', '&', '=', '+')).repeat(1)
        end

        rule(:path) do
          pchar.repeat(1) >>
          (str('/') >> pchar.repeat).repeat
        end

        rule(:query) do
          # I can make this repeatable I think, but maybe a raw string is best.
          (uchar | reserved).repeat
        end

        rule(:fragment) do
          (uchar | reserved).repeat
        end

        rule(:authority) do
          (userinfo.as(:userinfo) >> str('@')).maybe >>
          host.as(:host) >>
          (str(':') >> digits.as(:port)).maybe
        end

        rule(:absolute_path) do
          str('/') >> path.as(:path).maybe
        end

        rule(:absolute_uri) do
          scheme.as(:scheme) >>
          str(':') >>
          str('//') >>
          authority >>
          absolute_path >>
          (str('?') >> query.as(:query)).maybe >>
          (str('#') >> fragment.as(:fragment)).maybe
        end
      end
    end
  end
end
