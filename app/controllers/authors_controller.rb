class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new author_params
    if @author.save
      flash[:info] = t ".success"
      redirect_to new_mangak_path
    else
      flash.now[:danger] = t ".error"
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.page(params[:page]).per 10
  end

  def update
  end

  private

  def author_params
     params.require(:author).permit(:name)
  end
end
