class UsersController < ApplicationController
  def index
    # find all users
    @all_user = User.all
  end

  def show
    # find one user by name
    @user = User.find_by(name: params[:name])
  end
end
