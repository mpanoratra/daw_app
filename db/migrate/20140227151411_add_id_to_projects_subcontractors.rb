class AddIdToProjectsSubcontractors < ActiveRecord::Migration
  def change
    add_column :projects_subcontractors, :id, :primary_key
  end
end
