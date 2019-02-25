class UsersController < ApplicationController
  before_action :correct_user, only: [:show]
  skip_before_action :authenticate_user!, only: [:shared_location]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def shared_location
    @locations = []
    @user = User.find_by(username: params[:username])
    if @user
      @user.locations.each do |location|
        @locations << location unless location.shared_users.empty?
      end
    else
      if current_user
        redirect_to users_path unless @user
      else
        redirect_to root_path
      end
    end
  end

  def shared_by_others
    @user = current_user
    @locations = @user.shared_locations
  end
  private

  def correct_user
    user = User.find_by(id: params[:id])
    redirect_to(user_path(current_user)) if current_user != user
  end
end
