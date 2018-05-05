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

  def create
    @hobby = Hobby.create(params.require(:hobby).permit(:name))
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
