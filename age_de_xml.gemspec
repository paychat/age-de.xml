# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'age_de_xml/version'

Gem::Specification.new do |spec|
  spec.name          = 'age_de_xml'
  spec.version       = AgeDeXml::VERSION
  spec.authors       = %w(Paychat)
  spec.email         = %w(support@paychat.de)
  spec.description   = %q{A Gem for age-de.xml label for age classification}
  spec.summary       = %q{A Gem for age-de.xml label for age classification}
  spec.homepage      = 'https://github.com/paychat/age-de.xml'
  spec.license       = 'GPL'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
