class TitlesController < ApplicationController
  def index
    @titles = Title.all
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.create(params.require(:title).permit(:name, :about))
    redirect_to titles_new_path
  end

  def destroy
    @title = Title.find(params[:id])
    @title.user_titles.each do |ut|
      ut.destroy
    end
    @title.destroy
    redirect_to titles_path
  end
end
