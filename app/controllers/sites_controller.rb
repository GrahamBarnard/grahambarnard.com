class SitesController < ApplicationController
  def index
    @websites = Website.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @websites }
    end
  end
end
