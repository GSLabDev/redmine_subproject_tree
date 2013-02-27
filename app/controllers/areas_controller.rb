class AreasController < ApplicationController


  def index
    @parent_project = Project.find(params[:project_id])
    @project = @parent_project  
    @projects = @parent_project.children
  end


end
