class PhotosController < ApplicationController
  def index
    @current_project = Project.find(params[:project_id])
    @all_photos = @current_project.photos
  end

  def allphotos
    @all_photos = current_user.photos
  end
end
