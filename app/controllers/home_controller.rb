class HomeController < ApplicationController
	before_filter :find_model
  def index
    @home = Patient.new
  end
	

	private
	def find_model
		@home = Patient.find(params[:id]) if params[:id]
	end
end