class Employee < ActiveRecord::Base
  has_many :projects, through: :employees_projects
  has_many :employees_projects
  belongs_to :subcontractor
end
