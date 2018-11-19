class StaticPagesController < ApplicationController
  def home
    @genres = Genre.all
    @chapters = Chapter.page(params[:page]).per 10
    @mangaks = Mangak.sort_by_impressionist.limit(10)
    @mangaks_new = Mangak.sort_by_create.limit(10)
  end
end
