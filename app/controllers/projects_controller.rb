class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :index]
  def index
    @projects = Project.all.order('created_at DESC')
  end
  def show
  end
  private
    def find_project
      @projects = Project.friendly.find(params[:id])
      @projects = Project.order("created_at desc").limit(4).offset(1)
    end
    
    def project_params
      params.require(:project).permit(:title, :body, :image)
    end
end
