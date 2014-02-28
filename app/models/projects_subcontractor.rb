class ProjectsSubcontractor < ActiveRecord::Base
 belongs_to :subcontractor
 belongs_to :project
end
