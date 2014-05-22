class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false
      t.integer :business_id, null: false

      t.timestamps
    end
    add_index :favorites, :user_id
    add_index :favorites, :business_id
    add_index :favorites, [:user_id, :business_id], unique: true
  end
end
