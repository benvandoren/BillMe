class ProjectsController < ApplicationController
  before_filter :signed_in_user
  before_filter :admin_user

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      flash[:success] = "Project created!"
      redirect_to root_path
    else
      @feed_items = []
      render new_project_path
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  def index
  end

  def show
  end

  private

  def project_params
    params.require(:project).permit(:client_name, :project_name, :rate)
  end
end
