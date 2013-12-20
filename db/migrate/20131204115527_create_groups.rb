class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :education_program_id

      t.timestamps
    end
  end
end
