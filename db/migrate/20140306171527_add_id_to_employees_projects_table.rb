class AddIdToEmployeesProjectsTable < ActiveRecord::Migration
  def change
    add_column :employees_projects, :id, :primary_key
  end
end
