class HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.create(params.require(:hobby).permit(:name))
    redirect_to '/hobby/index'
  end
end
