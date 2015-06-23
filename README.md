``` ruby
rule(:crlf) do

end

rule(:token) do

end

rule(:sp) do

end

rule(:digit) do
  match['0-9']
end

rule(:escape) do
  str('%') >> hex >> hex
end

  rule(:hex) do
    digit | match['A-F'] | match['a-f']
  end

rule(:alpha) do
  low_alpha | high_alpha
end

  rule(:low_alpha) do
    match['a-z']
  end

  rule(:high_alpha) do
    match['A-Z']
  end

rule(:safe) do
  str('$') | str('-') | str('_') | str('.') | str('+')
end

rule(:extra) do
  str('!') | str('*') | str("'") | str('(') | str(')') | str(',')
end

rule(:national) do
  str('{') | str('}') | str('|') | str('\\') | str('^') | str('~') | str('[') | str(']') | str('`')
end

rule(:reserved) do
  str(';') | str('/') | str('?') | str(':') | str('@') | str('&') | str('=')
end

rule(:punctuation) do
  str('<') | str('>') | str('#') | str('%') | str('"')
end

rule(:unreserved) do
  alpha | digit | safe | extra
end

rule(:pchar) do
  uchar | str(":") | str("@") | str("&") | str("=")
end

  rule(:uchar) do
    unreserved | escape
  end


rule(:network_location) do
  (uchar | str(';') | str('?'))
end

rule(:query) do
  (uchar | reserved).repeat
end

rule(:fragment) do
  (uchar | reserved).repeat
end

rule(:scheme) do
  (alpha | digit | str("+") | str("-") | str(".")).repeat(1)
end

rule(:parameter)

rule(:parameters)

rule()

URL         = ( absoluteURL | relativeURL ) [ "#" fragment ]

absoluteURL = generic-RL | ( scheme ":" *( uchar | reserved ) )

generic-RL  = scheme ":" relativeURL

relativeURL = net_path | abs_path | rel_path

net_path    = "//" net_loc [ abs_path ]
abs_path    = "/"  rel_path
rel_path    = [ path ] [ ";" params ] [ "?" query ]

path        = fsegment *( "/" segment )
fsegment    = 1*pchar
segment     =  *pchar





rule(:request) do
  request_line >>
  ((general_header | request_header | entity_header) >> crlf).repeat(0) >>
  crlf >>
  message_body.maybe
end


  rule(:request_line) do
    method >>
    sp >>
    request_uri >>
    sp >>
    http_version >>
    crlf
  end

    rule(:method) do
      str('OPTIONS') | str('GET') | str('HEAD') | str('POST') | str('PUT') | str('DELETE') | str('TRACE') | str('CONNECT') | extension_method
    end

      rule(:extension_method) do
        token
      end

    rule(:request_uri) do
      str('*') | absolute_uri | absolute_path | authority
    end

    rule(:http_version) do
      str('HTTP') >>
      str('/') >>
      digit.repeat(1) >>
      str('.') >>
      digit.repeat(1)
    end
```





net-http-request
--------

  - [![Quality](http://img.shields.io/codeclimate/github/krainboltgreene/net-http-request.gem.svg?style=flat-square)](https://codeclimate.com/github/krainboltgreene/net-http-request.gem)
  - [![Coverage](http://img.shields.io/codeclimate/coverage/github/krainboltgreene/net-http-request.gem.svg?style=flat-square)](https://codeclimate.com/github/krainboltgreene/net-http-request.gem)
  - [![Build](http://img.shields.io/travis-ci/krainboltgreene/net-http-request.gem.svg?style=flat-square)](https://travis-ci.org/krainboltgreene/net-http-request.gem)
  - [![Dependencies](http://img.shields.io/gemnasium/krainboltgreene/net-http-request.gem.svg?style=flat-square)](https://gemnasium.com/krainboltgreene/net-http-request.gem)
  - [![Downloads](http://img.shields.io/gem/dtv/net-http-request.svg?style=flat-square)](https://rubygems.org/gems/net-http-request)
  - [![Tags](http://img.shields.io/github/tag/krainboltgreene/net-http-request.gem.svg?style=flat-square)](http://github.com/krainboltgreene/net-http-request.gem/tags)
  - [![Releases](http://img.shields.io/github/release/krainboltgreene/net-http-request.gem.svg?style=flat-square)](http://github.com/krainboltgreene/net-http-request.gem/releases)
  - [![Issues](http://img.shields.io/github/issues/krainboltgreene/net-http-request.gem.svg?style=flat-square)](http://github.com/krainboltgreene/net-http-request.gem/issues)
  - [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)
  - [![Version](http://img.shields.io/gem/v/net-http-request.svg?style=flat-square)](https://rubygems.org/gems/net-http-request)


TODO: Write a gem description


Using
=====

TODO: Write usage instructions here


Installing
==========

Add this line to your application's Gemfile:

    gem "net-http-request", "~> 1.0"

And then execute:

    $ bundle

Or install it yourself with:

    $ gem install net-http-request


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request


Changelog
=========

  - 1.0.0: Initial release


Conduct
=======

As contributors and maintainers of this project, we pledge to respect all people who contribute through reporting issues, posting feature requests, updating documentation, submitting pull requests or patches, and other activities.

We are committed to making participation in this project a harassment-free experience for everyone, regardless of level of experience, gender, gender identity and expression, sexual orientation, disability, personal appearance, body size, race, age, or religion.

Examples of unacceptable behavior by participants include the use of sexual language or imagery, derogatory comments or personal attacks, trolling, public or private harassment, insults, or other unprofessional conduct.

Project maintainers have the right and responsibility to remove, edit, or reject comments, commits, code, wiki edits, issues, and other contributions that are not aligned to this Code of Conduct. Project maintainers who do not follow the Code of Conduct may be removed from the project team.

Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by opening an issue or contacting one or more of the project maintainers.

This Code of Conduct is adapted from the [Contributor Covenant](http:contributor-covenant.org), version 1.0.0, available at [http://contributor-covenant.org/version/1/0/0/](http://contributor-covenant.org/version/1/0/0/)


License
=======

Copyright (c) 2014, 2015 Kurtis Rainbolt-Greene

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
