class HomeController < ApplicationController
  skip_before_filter :authorize
  
  # GET /home
  # GET /home.json
  def index

    @user = User.find(1)
   	@websites = Website.where(published: true).limit(6)
   	@posts = Blog.where(published: true, featured: true).limit(6)
   	@skills = Skill.order(:skilltype_id)
   	@educations = Education.order('start_date desc')
   	@testimonials = Testimonial.where(published: true).order('created_at desc')
   	@employments = Employment.where(published: true).order('start_date desc')
   	
    respond_to do |format|
      format.html # index.html.erb
      format.json { }
    end
  end
end
