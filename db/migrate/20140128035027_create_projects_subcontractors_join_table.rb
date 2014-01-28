class CreateProjectsSubcontractorsJoinTable < ActiveRecord::Migration
  def change
    create_table :projects_subcontractors, id: false do |t|
      t.integer :project_id
      t.integer :subcontractor_id
    end
  end
end
