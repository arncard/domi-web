require 'api_connector'

class CommercesController < ApplicationController
  def index
    @commerces = ApiConnector.get_commerces
  end
end
