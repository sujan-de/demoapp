class LocationsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @locations = @user.locations
    @users = User.all
  end

  def new
    @user = User.find_by(id: params[:user_id])
    @users = User.where.not(id: current_user.id)
  end

  def create
    @user = User.find_by(id: params[:user_id])
    location = @user.locations.build(latitude: params[:latitude].to_f, longitude: params[:longitude].to_f, zoom: params[:zoom].to_f)

    if location.save
      if params[:share] == "private"
        params[:person_list].each { |person_id| location.shared_users << User.find_by(id: person_id.to_i) }
        #flash[:alert] = "This map has been shared with your users"
      end
      #flash[:alert] ||= "This map has been shared publically"
    else
      #flash[:alert] = "The location was not shared"
    end
  end
end
