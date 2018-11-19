class UsersController < ApplicationController
  def show
    @user  = User.find(params[:id])
    @mangaks = @user.following.paginate(page: params[:page], :per_page => 10)
  end

  def index
    @q = User.search(params[:q])
    @users = @q.result.paginate(page: params[:page], :per_page => 10)
  end
end
