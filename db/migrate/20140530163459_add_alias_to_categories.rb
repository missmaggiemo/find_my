class AddAliasToCategories < ActiveRecord::Migration
  def change
    
    add_column :categories, :alias, :string
    
    add_index :categories, :alias, unique: true
    
  end
end
