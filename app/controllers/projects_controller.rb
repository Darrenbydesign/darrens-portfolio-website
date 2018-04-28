class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order("create_at desc")
  end

  def show
    @project = Project.find(params[:id])
    @projects = Project.order("create_at desc").limit(4).offset(1)
  end
  private
    def project_params
      params.require(:project).permit(:title,:body,:image)
      
    end
end
