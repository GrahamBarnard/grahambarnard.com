class UsersController < InheritedResources::Base
  
  def create
    @user = User.new(params[:user])
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to(users_url,
          :notice => "User #{@user.name} was succesfully created.") }
        format.xml { render :xml => @user,
          :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @user.errors, 
            :status => :unprocessable_entity }
      end
    end
  end
  
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(users_url,
          :notice => "User #{@user.name} was succesfully updated.") }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @user.errors, 
            :status => :unprocessable_entity }
      end
    end
  end
  
  def index
    @users = User.order(:name)
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @users }
    end
  end
end