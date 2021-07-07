class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

 def index
    @genres = Genre.page(params[:page]).per 10
  end

  def update
  end
end
