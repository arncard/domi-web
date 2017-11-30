require 'api_connector'

class CommercesController < ApplicationController
  def index
    @commerces = ApiConnector.get_commerces
  end

	def show
		@commerce = ApiConnector.get_commerces(params[:id])
	end
end
