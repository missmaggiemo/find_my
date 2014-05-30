class ChangeColNameCategoriesAlias < ActiveRecord::Migration
  def change
    
    rename_column :categories, :alias, :category_alias
    
  end
end
