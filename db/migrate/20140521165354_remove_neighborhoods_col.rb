class RemoveNeighborhoodsCol < ActiveRecord::Migration
  def change
    remove_column :locations, :neighborhoods
  end
end
