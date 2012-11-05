class UsersController < ApplicationController
#filter_resource_access
	def index
		@users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])  
		if @user.save  
		 flash[:notice] = "Registration successful."  
		 redirect_to :controller=>'home'
		else  
		#     redirect_to :controller=>'users', :action => 'new'
		 render :action => 'new'
		end
	end

	def monitor
	end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(:action => 'index', :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end #end if
     end
  end
end
