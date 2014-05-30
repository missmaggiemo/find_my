class CreateBusinessCategories < ActiveRecord::Migration
  def change
    create_table :business_categories do |t|
      t.integer :category_id
      t.integer :business_id
      t.timestamps
    end
    
    add_index :business_categories, :category_id
    add_index :business_categories, :business_id
    add_index :business_categories, [:category_id, :business_id], unique: true
  end
end
