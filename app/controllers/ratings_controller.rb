class RatingsController < ApplicationController
  
  def create
    @rat = Rating.new(rating_params)
    if @rat.save
      head :ok
    else
      render json: @rat.errors.full_messages, status: 422
    end  
  end
  
  def destroy
    @rat = Rating.find(params[:id])
    if @rat
      @rat.delete
      head :ok
    else
      render json: "Rating with id #{params[:id]} doesn't exist.", status: 422
    end
  end

  private
  
  def rating_params
    params.require(:rating).permit(:user_id, :business_id, :stars)
  end

end
