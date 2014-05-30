class RecommendationsController < ApplicationController

  def update
    @rec = Recommendation.find(params[:id])
    if @rec && @rec.update(rec_params)
      render json: @rec, include: :business
    else
      render json: "No recommendatiom with id #{params[:id]}"
    end
  end

  private

  def rec_params
    params.require(:recommendation).permit(:viewed)
  end

end
