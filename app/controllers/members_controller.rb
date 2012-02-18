class MembersController < ApplicationController
	def show
		@title = "Profile"
	end

end

#Actions
#                     POST   /members(.:format)                             {:action=>"create", :controller=>"members"}
#          new_member GET    /members/new(.:format)                         {:action=>"new", :controller=>"members"}
#         edit_member GET    /members/:id/edit(.:format)                    {:action=>"edit", :controller=>"members"}
#              member GET    /members/:id(.:format)                         {:action=>"show", :controller=>"members"}
#                     PUT    /members/:id(.:format)                         {:action=>"update", :controller=>"members"}
#                     DELETE /members/:id(.:format)                         {:action=>"destroy", :controller=>"members"