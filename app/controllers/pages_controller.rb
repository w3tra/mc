class PagesController < ApplicationController
	require 'rest_client'

	def index
    resource = RestClient::Resource.new "https://mcapi.ca/query/meinkampf.ddns.net/info"
    @response = resource.get
    @parsed_response = ActiveSupport::JSON.decode(@response.to_str)
  end
  
end
