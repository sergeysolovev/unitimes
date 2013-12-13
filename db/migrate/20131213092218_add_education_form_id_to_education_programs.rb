class AddEducationFormIdToEducationPrograms < ActiveRecord::Migration
  def change
    add_column :education_programs, :educationForm_id, :integer
  end
end
