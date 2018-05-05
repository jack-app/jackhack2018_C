class UsersController < ApplicationController
  def index
    @users = User.all
  end

  include ApplicationHelper
  def show
    if params[:id].nil? then
      if logged_in? then
        @user = current_user
      else
        redirect_to root_path
      end
    else
      @user = User.find(params[:id])
    end
  end
end
