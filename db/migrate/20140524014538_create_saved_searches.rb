class CreateSavedSearches < ActiveRecord::Migration
  def change
    create_table :saved_searches do |t|
      t.integer :search_id
      t.integer :user_id

      t.timestamps
    end
    
    add_index :saved_searches, :user_id
    add_index :saved_searches, :search_id
    add_index :saved_searches, [:search_id, :user_id], unique: true
  end
end
