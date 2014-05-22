class CreateYelpReviews < ActiveRecord::Migration
  def change
    create_table :yelp_reviews do |t|
      t.text :excerpt
      t.string :id_string, null: false
      t.integer :rating
      t.string :rating_image_large_url
      t.string :rating_image_small_url
      t.string :rating_image_url
      t.integer :yelp_time_created
      t.string :yelp_user_id, null: false
      t.string :yelp_user_img
      t.string :yelp_user_name
      
      t.integer :business_id
      
      t.timestamps
    end
    
    add_index :yelp_reviews, :id_string, unique: true
  end
end
