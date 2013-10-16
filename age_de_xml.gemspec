# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'age_de_xml/version'

Gem::Specification.new do |spec|
  spec.name          = 'age_de_xml'
  spec.version       = AgeDeXml::VERSION
  spec.authors       = ['Alexandr Prudnikov', 'Bahtiar `kalkin` Gadimov']
  spec.email         = %w(bahtiar@gadimov.de)
  spec.summary       = %q{age-de.xml label for age classification}
  spec.description   = %q{Rails plugin for age-de.xml label for age classification}
  spec.homepage      = 'https://github.com/paychat/age-de.xml'
  spec.license       = 'LGPL'

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = %w(lib)

  spec.add_dependency 'rails', '>= 3.2.0'
end
