module Net
  class HTTP
    class Request
      class Parser < Parslet::Parser

        #
        # rule(:digits) do
        #   digit.repeat(1)
        # end
        #
        # rule(:xdigit) do
        #   digit | match['a-fA-F']
        # end
        #
        # rule(:upper) do
        #   match['A-Z']
        # end
        #
        # rule(:lower) do
        #   match['a-z']
        # end
        #
        # rule(:alpha) do
        #   upper | lower
        # end
        #
        # rule(:alnum) do
        #   alpha | digit
        # end
        #
        # rule(:cntrl) do
        #   match['\x00-\x1f']
        # end
        #
        # rule(:ascii) do
        #   match['\x00-\x7f']
        # end
        #
        # rule(:lws) do
        #   match[" \t"]
        # end
        #
        # rule(:htab) do
        #   str("\t")
        # end
        #
        # rule(:crlf) do
        #   str("\r\n")
        # end
        #
        # rule(:ctl) do
        #   cntrl | str("\x7f")
        # end
        #
        # rule(:text) do
        #   lws | (ctl.absnt? >> ascii)
        # end
        #
        # rule(:safe) do
        #   charset('$', '-', '_', '.')
        # end
        #
        # rule(:extra) do
        #   charset('!', '*', "'", '(', ')', ',')
        # end
        #
        # rule(:reserved) do
        #   charset(';', '/', '?', ':', '@', '&', '=', '+')
        # end
        #
        # rule(:sorta_safe) do
        #   charset('"', '<', '>')
        # end
        #
        # rule(:unsafe) do
        #   ctl | charset(' ', '#', '%') | sorta_safe
        # end
        #
        # rule(:national) do
        #   (alpha | digit | reserved | extra | safe | unsafe).absnt? >> any
        # end
        #
        # rule(:unreserved) do
        #   alpha | digit | safe | extra | national
        # end
        #
        # rule(:uescape) do
        #   str("%u") >> xdigit >> xdigit >> xdigit >> xdigit
        # end
        #
        # rule(:escape) do
        #   str("%") >> xdigit >> xdigit
        # end
        #
        # rule(:uchar) do
        #   unreserved | uescape | escape | sorta_safe
        # end
        #
        # rule(:pchar) do
        #   uchar | charset(':', '@', '&', '=', '+')
        # end
        #
        # rule(:separators) do
        #   lws | charset('(', ')', '<', '>', '@', ',', ';', ':', "\\", '"', '/', '[', ']', '?', '=', '{', '}')
        # end
        #
        # rule(:sp) do
        #   str(' ')
        # end
        #
        # rule(:token) do
        #   (ctl | separators).absnt? >> ascii
        # end
        #
        # rule(:comment_text) do
        #   (str('(') | str(')')).absnt? >> text
        # end
        #
        # rule(:comment) do
        #   str('(') >> comment_text.repeat >> str(')')
        # end
        #
        # rule(:quoted_pair) do
        #   str("\\") >> ascii
        # end
        #
        # rule(:quoted_text) do
        #   quoted_pair | str('"').absnt? >> text
        # end
        #
        # rule(:quoted_string) do
        #   str('"') >> quoted_text >> str('"')
        # end
        #
        # rule(:ows) do
        #   (sp | htab).maybe
        # end
      end
    end
  end
end
