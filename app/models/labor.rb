class Labor < ActiveRecord::Base
  belongs_to :task
  belongs_to :employee
end
