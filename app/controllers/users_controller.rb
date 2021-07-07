class UsersController < ApplicationController
  def show
    @user  = User.find(params[:id])
    @mangaks = @user.following.paginate(page: params[:page])
  end
end
