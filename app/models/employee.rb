class Employee < ActiveRecord::Base
  has_many :projects
  belongs_to :subcontractor
end
