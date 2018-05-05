class UserHobbiesController < ApplicationController
    def create
      @userHobby = UserHobby.new
      @userHobby = UserHobby.find_or_create_by(user: current_user, hobby: Hobby.find(params[:id]))
      redirect_to hobbies_path
    end

    def destroy
      @userHobby = UserHobby.find(params[:id])
      @userHobby.destroy
      redirect_to user_path
    end
end
