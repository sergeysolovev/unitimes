class EducationProgram < ActiveRecord::Base
	belongs_to :educationform 
	belongs_to :educationlevel
	has_many :groups
end
