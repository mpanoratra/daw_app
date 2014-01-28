class Task < ActiveRecord::Base
  belongs_to :unit
  has_many :labors
end
