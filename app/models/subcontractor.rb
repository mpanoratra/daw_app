class Subcontractor < ActiveRecord::Base
  has_many :projects, through: :projects_subcontractors
  has_many :projects_subcontractors
  has_many :employees

end
