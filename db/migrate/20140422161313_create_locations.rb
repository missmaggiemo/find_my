class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :business_id      
      t.string :city
      t.string :display_address
      t.string :neighborhoods
      t.string :postal_code
      t.string :country_code
      t.string :address
      t.string :state_code
      
      t.timestamps
    end
    add_index :locations, :business_id
  end
end
