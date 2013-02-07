class WebimagesController < InheritedResources::Base
  def new
    @websites = Website.all
    @webimage = Webimage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @webimage }
    end
  end
end
