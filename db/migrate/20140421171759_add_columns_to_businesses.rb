class AddColumnsToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :is_claimed, :bool
    add_column :businesses, :rating, :float
    add_column :businesses, :mobile_url, :string
    add_column :businesses, :rating_img_url, :string
    add_column :businesses, :rating_img_url_large, :string
    add_column :businesses, :review_count, :integer
    add_column :businesses, :snippet_image_url, :string
    add_column :businesses, :rating_img_url_small, :string
    add_column :businesses, :url, :string
    add_column :businesses, :menu_date_updated, :integer
    add_column :businesses, :phone, :integer
    add_column :businesses, :snippet_text, :text
    add_column :businesses, :image_url, :string
    add_column :businesses, :display_phone, :string
    add_column :businesses, :menu_provider, :string
    add_column :businesses, :id_string, :string
    add_column :businesses, :is_closed, :bool
  end
end
