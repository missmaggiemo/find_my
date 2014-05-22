class AddYelpRatingToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :yelp_rating, :float
  end
end
