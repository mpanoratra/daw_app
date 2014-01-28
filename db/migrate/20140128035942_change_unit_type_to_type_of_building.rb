class ChangeUnitTypeToTypeOfBuilding < ActiveRecord::Migration
  def change
    rename_column :units, :type, :type_of_building
  end
end
