class CreateEducationPrograms < ActiveRecord::Migration
  def change
    create_table :education_programs do |t|
      t.string :course
      t.string :educationLevel
      t.string :educationForm
      t.string :name

      t.timestamps
    end
  end
end
