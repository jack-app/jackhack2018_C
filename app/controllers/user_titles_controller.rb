class UserTitlesController < ApplicationController
  def create
    @userTitle = UserTitle.new
    @userTitle = UserTitle.find_or_create_by(user: current_user, title: Title.find(params[:id]))
    redirect_to titles_path
  end

  def destroy
    @userTitle = UserTitle.find(params[:id])
    @userTitle.destroy
    redirect_to user_path
  end
end
