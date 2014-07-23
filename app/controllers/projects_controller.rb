class ProjectsController < ApplicationController
  before_filter :signed_in_user
  before_filter :admin_user

  def new
  end

  def create
    @project = current_user.projects.build(params[:project])
    if @project.save
      flash[:success] = "Project created!"
      redirect_to root_path
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
