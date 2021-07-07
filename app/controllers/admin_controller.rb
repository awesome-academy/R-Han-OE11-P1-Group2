class AdminController < ApplicationController
  def index
    @users = User.all
  end

  def users_by_age
    result = User.group(:age).count
    render json: [{name: 'Count', data: result}]
  end
end
