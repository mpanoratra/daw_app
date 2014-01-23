class AddJobTypeToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :job_type, :string
    add_column :employees, :hourly, :boolean
    
  end
end
