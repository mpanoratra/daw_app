class Project < ActiveRecord::Base
  has_and_belongs_to_many :employees
  has_and_belongs_to_many :users, through: :project_users
  has_and_belongs_to_many :subcontractors

  has_many :units
  has_many :tasks, through: :units
  has_many :labors, through: :tasks

end
