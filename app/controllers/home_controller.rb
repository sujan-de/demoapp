class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:welcome]
  def welcome
    if current_user
      redirect_to user_path(current_user)
    end
  end
end
