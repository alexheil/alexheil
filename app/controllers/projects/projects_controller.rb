class Projects::ProjectsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.admin_id = current_admin.id
    if @project.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def edit
    @project = Project.friendly.find(params[:id])
  end

  def update
    @project = Project.friendly.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.friendly.find(params[:id]).destroy
    redirect_to root_url
  end

  private

    def project_params
      params.require(:project).permit(:title, :content, :description, :slug, :image, :project_url, :facebook_url, :twitter_url, :tumblr_url, :googleplay_url, :instagram_url, :snapchat_name, :youtube_url, :github_url, :pinterest_url, :start_date, :end_date, :hours, :logo)
    end

end
