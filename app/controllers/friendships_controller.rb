class FriendshipsController < ApplicationController

  def create
    @friendship = Friendship.new(friendship_params)
    if @friendship.save
      render json: @friendship
    else
      render json: @friendship.errors.full_messages, status: 422
    end  
  end
  
  def destroy
    @friendship = Friendship.find(params[:id])
    if @friendship
      @friendship.delete
      head :ok
    else
      render json: "Favorite with id #{params[:id]} doesn't exist.", status: 422
    end
  end

  private
  
  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end


end
