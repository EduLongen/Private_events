class UsersController < ApplicationController
  
  before_action :set_user
  
  def show
  end

  def show_attended_events
    @attended_events = current_user.attended_events
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
