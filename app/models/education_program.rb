class EducationProgram < ActiveRecord::Base
	belongs_to :educationform 
	belongs_to :educationlevel
	has_many :groups
	default_scope order('"educationForm_id" ASC, "educationLevel_id" ASC, course ASC, name ASC')
end
