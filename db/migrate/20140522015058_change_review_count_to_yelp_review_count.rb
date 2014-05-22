class ChangeReviewCountToYelpReviewCount < ActiveRecord::Migration
  def change
    change_column :businesses, :review_count, :integer, name: :yelp_review_count
  end
end
