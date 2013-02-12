class SitesController < ApplicationController
  skip_before_filter :authorize
  
  def index
    @websites = Website.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @websites }
    end
  end
  
  # GET /websites/1
  # GET /websites/1.json
  def show
    @website = Website.find(params[:id])
    
    respond_to do |format|
      format.html { render :layout => false }
      format.json { render json: @website }
    end
  end
  
  
end
