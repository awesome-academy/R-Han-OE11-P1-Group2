class StaticPagesController < ApplicationController
  def home
    @genres = Genre.all
    @chapters = Chapter.page(params[:page]).per 10
  end
end
