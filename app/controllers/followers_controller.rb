class FollowersController < ApplicationController

  def index

  end

  def create
    ::Followers::Create.new(user_id: params[:user_id] , follower_id: current_user.id).execute
    redirect_to user_path(params[:user_id])
  end

  def destroy
    ::Followers::Destroy.new(user_id: params[:id], follower_id: current_user.id).execute
    redirect_to user_path(params[:id])

  end

end