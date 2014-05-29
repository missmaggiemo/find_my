class AddIndexToSearches < ActiveRecord::Migration
  def change
    add_index :searches, [:location, :search_term]
  end
end
