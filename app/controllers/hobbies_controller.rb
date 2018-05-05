class HobbiesController < ApplicationController
  def index
    search = params[:search]
    if search
      @hobbies = Hobby.search(search[:key])
    else
      @hobbies = Hobby.all
    end
  end

  def new
    @showHobby = Hobby.offset(rand(Hobby.count)).first
    @hobby = Hobby.new
  end

  include ApplicationHelper
  def create
    if logged_in? then
      key = {owner: current_user}
      @hobby = Hobby.create(key.update(params.require(:hobby).permit(:name)))
      @userHobby = UserHobby.new
      @userHobby = UserHobby.find_or_create_by(user: current_user, hobby: @hobby)
    else
      @hobby = Hobby.create(params.require(:hobby).permit(:name))
    end
    redirect_to hobbies_path
  end

  def destroy
    @hobby = Hobby.find(params[:id])
    @hobby.user_hobbies.each do |uh|
      uh.destroy
    end
    @hobby.destroy
    redirect_to hobbies_path
  end
end
