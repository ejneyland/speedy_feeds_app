class UserRolesController < ApplicationController
  def create
    current_user.add_role :vendor
    redirect_to root_path
    flash[:alert] = "You're now registered as a Restaurant"
  end
end
