class AdminController < ApplicationController
	def assignRoles
		@users=Users.find(:all)
		@roles=Roles.find(:all)
	end
end
