class AgeDeXmlController < ActionController::Base
  caches_page :show
  respond_to :xml, only: :show
end
