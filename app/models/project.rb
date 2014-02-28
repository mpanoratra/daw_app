class Project < ActiveRecord::Base
  has_and_belongs_to_many :employees
  has_many :users, through: :projects_users
  has_many :subcontractors, through: :projects_subcontractors
  has_many :subcontractors
  has_many :units
  has_many :tasks, through: :units
  has_many :labors, through: :tasks
  has_many :projects_users

end
