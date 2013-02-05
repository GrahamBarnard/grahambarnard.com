class PostsController < ApplicationController
  #index to display all available blog posts
  def index
   	@posts = Blog.where(published: true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

end
