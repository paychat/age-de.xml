require 'age_de_xml/version'

require 'age_de_xml/rails' if defined?(Rails)

module AgeDeXml

  mattr_accessor :domain
  mattr_accessor :age
  self.age = 18

  # There are two way to setup:
  #  * use this method
  #  * use options of <tt>age_de_xml</tt> routes helper
  def self.setup
    yield self
  end
end
