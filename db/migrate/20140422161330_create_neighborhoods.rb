class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :city
      t.string :state_code
      t.string :country_code

      t.timestamps
    end
    add_index :neighborhoods, [:name, :city], unique: true
  end
end
