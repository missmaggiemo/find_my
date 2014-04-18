class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :location, null: false
      t.string :search_term, null: false
      
      t.timestamps
    end
  end
end
