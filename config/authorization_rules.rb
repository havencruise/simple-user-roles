authorization do
	role :admin do
		has_permission_on	[:users], :to => [:monitor, :new, :edit]
		has_permission_on :home, :to => [:index]
	end

	role :guest do
		#has_permission_on :users, :to => [:new, :create, :index, :edit, :show, :update]
		has_permission_on :users, :to => [:new, :create]
		has_permission_on :home, :to => [:index]
	end
end
