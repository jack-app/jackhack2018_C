class UsersController < ApplicationController
  def index
    @users = User.all
  end

  include ApplicationHelper
  def show
    if logged_in? then
      @user = current_user
    else
      redirect_to root_path
    end
  end
end
