class HomeController < ApplicationController
  skip_before_filter :authorize
  
  # GET /home
  # GET /home.json
  def index
    
   	@welcome = Blog.where(title: "welcome").limit(1)
   	@posts = Blog.where(published: true, featured: true).limit(2)
   	
    respond_to do |format|
      format.html # index.html.erb
      format.json { }
    end
  end
end
