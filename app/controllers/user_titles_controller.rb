class UserTitlesController < ApplicationController
  def create
    @userTitle = UserTitle.new
    @userTitle = UserTitle.create(user: current_user, title: Title.find(params[:id]))
    redirect_to root_path
  end

  def destroy
    @userTitle = UserTitle.find(params[:id])
    @userTitle.destroy
    redirect_to root_path
  end
end
