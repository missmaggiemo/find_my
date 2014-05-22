class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :business_id, null: false
      t.integer :user_id, null: false
      t.integer :stars, null: false

      t.timestamps
    end
    
    add_index :ratings, :business_id
    add_index :ratings, :user_id
    add_index :ratings, [:business_id, :user_id], unique: true
    
  end
end
