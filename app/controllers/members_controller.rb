class MembersController < ApplicationController
	def show
		@member = Member.find(params[:id])
		@title = "Profile"
	end
	
	def new 
		@member = Member.new
		@title = "Sign up"
	end
	
	def create
		@member = Member.new(params[:member])
		if @member.save
			sign_in @member
			flash[:success] = "Hi there! Welcome to Kurbi!"
			redirect_to @member 
		else
			@title = "Sign up"
			render 'new'
		end
	end
	
	def edit
		@member = Member.find(params[:id])
		@title = "Edit Member Settings"
	end
	
	def update
		@member = Member.find(params[:id])
		if @member.update_attributes(params[:member])
			flash[:success] = "Your account settings have been updated."
			redirect_to @member
		else 
			@title = "Edit Member Settings"
			render 'edit'
		end
	end
	
	
end

#Actions
#                     POST   /members(.:format)                             {:action=>"create", :controller=>"members"}
#          new_member GET    /members/new(.:format)                         {:action=>"new", :controller=>"members"}
#         edit_member GET    /members/:id/edit(.:format)                    {:action=>"edit", :controller=>"members"}
#              member GET    /members/:id(.:format)                         {:action=>"show", :controller=>"members"}
#                     PUT    /members/:id(.:format)                         {:action=>"update", :controller=>"members"}
#                     DELETE /members/:id(.:format)                         {:action=>"destroy", :controller=>"members"