class FollowersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    to_follow = User.find(params[:id])

    to_follow.followers << Follower.new(user_id: current_user.id)
    redirect_to :back
  end
end
