require 'age_de_xml/version'

require 'age_de_xml/rails' if defined?(Rails)

module AgeDeXml

  # Reference to the label issuer
  mattr_accessor :domain

  mattr_reader :default_age
  def self.default_age=(value)
    allowed = %w(6 12 16 18)
    raise ArgumentError, "default_age should be one of #{allowed.to_s}" unless allowed.include?(value.to_s)
    @@default_age = value.to_s
  end
  self.default_age = 18

  # Country code (according to ISO), at first always DE 
  mattr_accessor :country
  self.country = 'de'

  # Label version based on the technical label format
  mattr_accessor :label_version
  self.label_version = '1.0'

  # Instruction to youth protection programmes, which cache the age‐de.xml if necessary, which uses 
  # information for a filter list. Format as in the old revisit HTML meta element. Maximum accepted 
  # indication: "100days", minimal "1days" (no hours, no singular). Current content is always marked with 
  # "always".
  mattr_accessor :revisit_after
  self.revisit_after = 'always'

  mattr_accessor :last_change
  self.last_change = Date.current.beginning_of_month.to_s

  # There are two way to setup:
  #  * use this method
  #  * use options of <tt>age_de_xml</tt> routes helper
  def self.setup
    yield self
  end

  def self.set_options(options)
    options.each do |opt, value|
      setter = "#{opt}=".to_sym
      send(setter, value) if respond_to?(setter)
    end
  end
end
