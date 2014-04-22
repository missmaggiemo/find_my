class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  # GET /searches
  # GET /searches.json
  def index
    @searches = Search.all
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
    results = JSON.parse(YelpSession.generate_yelp_results(@search.search_term, @search.location))
    @center = results['region']['center']
    @business_results = Business.yelp_businesses_json_to_businesses(results['businesses'])
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: 'Search was successfully created.' }
        format.json { render action: 'show', status: :created, location: @search }
      else
        format.html { render action: 'new' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params[:search].permit(:location, :search_term)
    end
    
    # def generate_yelp_results(search_term, location)
#   
#       consumer_key = ENV['YELP_CONSUMER_KEY']
#       consumer_secret = ENV['YELP_CONSUMER_SECRET']
#       token = ENV['YELP_TOKEN']
#       token_secret = ENV['YELP_TOKEN_SECRET']
# 
#       api_host = 'api.yelp.com'
# 
#       consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
#       access_token = OAuth::AccessToken.new(consumer, token, token_secret)
# 
#       path = "/v2/search?term=#{search_term}&location=#{URI::encode(location)}"
# 
#       access_token.get(path).body
#   
#     end
    
end
