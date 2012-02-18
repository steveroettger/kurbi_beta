class PagesController < ApplicationController
	def index
	  #return render :text => "The params are #{params}"
	  if params[:page] == "home"
	    @title = "home"
	    render 'home'
	  elseif params[:page] == "about"
	    @title= "about"
	    render "about"
	  elseif params[:page] == "contact"
	    @title = "contact"
	    render 'contact'
	  else
	    render 'home'
	  end 
	end
	
	def home
	  render 'home'
	end
	
	def about
	  render 'about'
	end
	
	def contact
	  render 'contact'
	end
end