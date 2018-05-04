class TitlesController < ApplicationController
  def index
    @titles = Title.all
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.create(params.require(:title).permit(:name, :about))
    redirect_to root_path
  end

  def destroy
    @title = Title.find(params[:id])
    @title.destroy
    redirect_to root_path
  end
end
