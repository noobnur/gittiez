class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!, only: :index

  def index
    @projects = Project.all

    # output = {
    #   projects: @projects,
    #   json_status: 200
    # }

    # render json: @projects
  end

  def show
    @project = Project.find(params[:id])

    render json: @project
  end

  def create
    # find current_user first
    # create new project based on that user
    current_user.projects.create(params.require(:project).permit(:name))

    redirect_to root_path

    # new_project_by_gloin = current_user.projects.build(
    #   name: params[:name]
    # )
    #
    # new_project_by_gloin.save
  end

  # action to create new project
  def new
    @new_project = Project.new
  end

  # PUT request `update`

  # DELETE request `destroy`



end
