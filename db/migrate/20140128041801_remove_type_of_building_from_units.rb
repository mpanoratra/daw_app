class RemoveTypeOfBuildingFromUnits < ActiveRecord::Migration
  def change
    remove_column :units, :type_of_building
  end
end
