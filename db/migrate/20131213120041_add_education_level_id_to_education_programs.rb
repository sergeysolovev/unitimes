class AddEducationLevelIdToEducationPrograms < ActiveRecord::Migration
  def change
    add_column :education_programs, :educationLevel_id, :integer
  end
end
