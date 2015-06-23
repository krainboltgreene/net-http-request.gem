

rule(:http_name) do

end



rule(:absolute_form) do
  absolute_uri
end

rule(:authority_form) do
  host.as(:host) >>
  str(':') >>
  digits.as(:port)
end

rule(:origin_form) do
  absolute_path >>
  (str('?') >> query.as(:query)).maybe >>
  (str('#') >> fragment.as(:fragment)).maybe
end

rule(:asterisk_form) do
  str('*')
end

rule(:request_target) do
  origin_form | absolute_form | authority_form | asterisk_form
end

rule(:request_line) do
  method >>
  sp >>
  request_target >>
  sp >>
  http_version >>
  crlf
end

rule(:start_line) do
  request_line
end
