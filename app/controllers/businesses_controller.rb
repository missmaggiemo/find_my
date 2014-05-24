class BusinessesController < ApplicationController
  before_action :set_business, only: :show

  # GET /businesses
  # GET /businesses.json
  def index
    @businesses = Business.all
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @center = @business.location.coordinates
    biz_results = JSON.parse(YelpSession.get_yelp_json_for_business(@business.id_string))
    @yelp_reviews = YelpReview.yelp_business_json_to_reviews(@business.id, biz_results)
    
    # categories should go here
    
    @favorite = Favorite.find_by(user_id: current_user.id, business_id: @business.id) if current_user
    
    respond_to do |format|
      format.html { render action: 'show' }
      format.json { render json: @business }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

end
