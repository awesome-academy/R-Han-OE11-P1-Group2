class MangaksController < ApplicationController
  impressionist actions: [:show,:index]

  def new
    @mangak = Mangak.new
  end

  def create
    @mangak = Mangak.new mangak_params
    if @mangak.save
      flash[:info] = t ".success"
      redirect_to @mangak
    else
      flash.now[:danger] = t ".error"
      render :new
    end
  end

  def show
    @mangak = Mangak.find(params[:id])
    @user = current_user
    @comment = Comment.new
    @comments = @mangak.comments.paginate(page: params[:page])
    impressionist(@mangak)
  end

  def index
    @mangaks = Mangak.select(:id, :name, :picture).sort_by_name.paginate(page: params[:page], :per_page => 10)
    if params[:search]
      @mangaks = Mangak.search(params[:search_manga]).paginate(page: params[:page], :per_page => 10)
    end
  end

  def mangak_hot
    @mangaks_hot = Mangak.select(:id, :name, :picture).sort_by_impressionist.page(params[:page])
  end

  def update
  end

  def destroy
    @mangak = Mangak.find_by(params[:id])
    if @mangak.destroy
      flash[:success] = t ".destroy"
    else
      flash[:danger] = t ".delete_fail"
    end
     redirect_to mangaks_url
  end

  private

  def mangak_params
     params.require(:mangak).permit(:name, :description, :picture, :author_id, :genre_id)
  end
end
