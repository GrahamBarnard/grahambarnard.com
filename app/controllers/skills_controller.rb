class SkillsController < InheritedResources::Base
  def new
    @skilltypes = Skilltype.all
    @skill = Skill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @skill }
    end
  end
  
  def edit
    @skilltypes = Skilltype.all
    @skill = Skill.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.json { render json: @skill }
    end
  end
  
end
