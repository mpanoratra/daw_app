class CreateEmployeesProjectsJoinTable < ActiveRecord::Migration
  def change
    create_table :employees_projects, id: false do |t|
      t.integer :employee_id
      t.integer :project_id
    end
  end
end
