class ChangeReviewCountToYelpReviewCount < ActiveRecord::Migration
  def change
    rename_column :businesses, :review_count, :yelp_review_count
  end
end
