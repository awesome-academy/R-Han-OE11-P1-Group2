class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  def new
    @mangak = Mangak.find_by id: params[:mangak_id]
    @chapter = Chapter.new
    @image = @chapter.images.build
  end

  def index
    @chapters = Chapter.page(params[:page]).per 10
  end

  def show
    @mangak = Mangak.find_by id: params[:mangak_id]
    @images = @chapter.images.all
  end

  def edit
  end

  def create
    @mangak = Mangak.find_by id: params[:mangak_id]
    @chapter = @mangak.chapters.create(chapter_params)
    if @chapter.save
      params[:images]["image"].each do |a|
        @image = @chapter.images.create!(:image => a)
      end
      flash[:info] = t ".success"
      redirect_to mangak_chapter_path(@mangak, @chapter)
    else
      flash.now[:danger] = t ".error"
      render :new
    end
  end

  def update

  end

  def destroy
    @chapter = Chapter.find_by(params[:id])
    if @chapter.destroy
      flash[:success] = t ".destroy"
    else
      flash[:danger] = t ".delete_fail"
    end
     redirect_to chapter.mangak
  end

  private
  def set_chapter
    @chapter = Chapter.find(params[:id])
  end

  def chapter_params
    params.require(:chapter).permit(:name_chapter,:mangak_id, images_attributes: [:id, :chapter_id, :photo])
  end
end
