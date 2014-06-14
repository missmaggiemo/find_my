class ChangeLocationsBusinessIdToInt < ActiveRecord::Migration
  def change
    
    add_column :locations, :biz_int, :integer

    Location.reset_column_information
    
    Location.all.each do |loc|
      loc.biz_int = loc.business_id.to_i
      loc.save
    end
    
    remove_column :locations, :business_id, :integer
    rename_column :locations, :biz_int, :business_id
  end
end
