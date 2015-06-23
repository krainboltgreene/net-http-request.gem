rule(:field_content) do
  vchar ((sp | htab).repeat(1) vchar).maybe
end

rule(:field_name) do
  token
end

rule(:field_value) do
  field_content.maybe
end

rule(:header_field) do
  field_name >>
  str(":") >>
  ows >>
  field_value >>
  ows
end

rule(:headers) do
  header_field >> crlf
end
