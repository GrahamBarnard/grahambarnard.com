class HomeController < ApplicationController
  skip_before_filter :authorize
  
  # GET /home
  # GET /home.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { }
    end
  end
end
