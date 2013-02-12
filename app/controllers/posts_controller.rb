class PostsController < ApplicationController
  skip_before_filter :authorize

  #index to display all available blog posts
  def index
   	@posts = Blog.where(published: true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
  
  def show
    @post = Blog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
  
end
