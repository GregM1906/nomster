class RenameColumnToLongitude < ActiveRecord::Migration[5.0]
  def change
   rename_column :places, :longtitude, :longitude
  end
end
