module ActionDispatch::Routing
  class Mapper
    # Includes age_de_xml method for routes. This method is responsible to
    # generate age-de.xml route and configure its content.
    #
    # ==== Examples
    #
    #   age_de_xml host: 'example.de', age: 18
    #
    # ==== Options
    #
    # You can configure age-de with some options:
    #
    #  * :domain => host name
    #  * :age => allowed age
    def age_de_xml(options={})
      AgeDeXml.set_options(options) if options
      get 'age-de.xml', to: 'age_de_xml#show', defaults: { format: :xml }
    end
  end
end
