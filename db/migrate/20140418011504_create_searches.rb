class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :location
      t.string :search_term
      
      t.timestamps
    end
  end
end
