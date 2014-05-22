class FavoritesController < ApplicationController

  def create
    @fav = Favorite.new(fav_params)
    if @fav.save
      head :ok
    else
      render json: @fav.errors.full_messages, status: 422
    end  
  end
  
  def destroy
    @fav = Favorite.find(params[:id])
    if @fav
      @fav.delete
      head :ok
    else
      render json: "Favorite with id #{params[:id]} doesn't exist.", status: 422
    end
  end

  private
  
  def fav_params
    params.require(:favorite).permit(:user_id, :business_id)
  end
  
end
