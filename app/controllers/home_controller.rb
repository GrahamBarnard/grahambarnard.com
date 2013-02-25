class HomeController < ApplicationController
  skip_before_filter :authorize
  
  # GET /home
  # GET /home.json
  def index
    
   	@posts = Blog.where(published: true, featured: true).limit(2)
   	@skills = Skill.order(:skilltype_id)
   	
    respond_to do |format|
      format.html # index.html.erb
      format.json { }
    end
  end
end
