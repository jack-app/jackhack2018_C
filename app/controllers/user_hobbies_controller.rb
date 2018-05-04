class UserHobbiesController < ApplicationController
    def create
      @userHobby = UserHobby.new
      @userHobby = UserHobby.create(user: current_user, hobby: Hobby.find(params[:id]))
      redirect_to root_path
    end

    def destroy
      @userHobby = UserHobby.find(params[:id])
      @userHobby.destroy
      redirect_to root_path
    end
end
