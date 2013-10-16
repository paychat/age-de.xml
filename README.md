age-de.xml
==========

Rails plugin for age-de.xml label for age classification. Minimal implementation.

## Installation

Add this line to your application's Gemfile:

    gem 'age_de_xml'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install age_de_xml

## Usage

Create initializer in `config/initializers/age_de_xml.rb`

```
AgeDeXml.configure do |config|
  config.domain = 'your.domain.de' # required
  config.default_age = 18 # default 18, can be 6, 12, 16 or 18
  # config.country = 'de' # default
  # config.label_version = '1.0' # default
  # config.revisit_after = 'always' # default, can be from "1days" to "100days"
  config.last_change = '2013-10-10' # date of last change
end
```

And call route helper from `config/routes.rb`

```
...::Application.routes.draw do
  age_de_xml
end
```

You can also setup all parameters in routes, instead of initializer:
```
...::Application.routes.draw do
  age_de_xml domain: 'your.domain.de', default_age: 18, last_change: Date.current.to_s
end
```

## Copyright

Copyright Bahtiar `kalkin` Gadimov 2013

## License

age-de.xml is released under the [LGPL License](http://choosealicense.com/licenses/lgpl-v2.1/).
