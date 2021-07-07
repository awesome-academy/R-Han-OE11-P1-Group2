class RelationshipsController < ApplicationController
  def create
    mangak = Mangak.find(params[:followed_id])
    current_user.follow(mangak)
    redirect_to mangak
  end

  def destroy
    mangak = Relationship.find(params[:id]).followed
    current_user.unfollow(mangak)
    redirect_to mangak
  end
end
