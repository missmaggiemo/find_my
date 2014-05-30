class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.integer :business_id, null: false
      t.integer :user_id, null: false
      t.boolean :viewed, default: false

      t.timestamps
    end
    
    add_index :recommendations, :business_id
    add_index :recommendations, :user_id
    add_index :recommendations, [:business_id, :user_id], unique: true
    add_index :recommendations, [:user_id, :viewed]
    
  end
end
