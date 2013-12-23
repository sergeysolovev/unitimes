class SessionController < ApplicationController
  def timetable
  end

  def tests
  end

  def groups
  	@education_programs = EducationProgram.all
  	@groups = Group.all
  end
end
