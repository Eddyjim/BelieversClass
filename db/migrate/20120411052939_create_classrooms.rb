class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.integer :id
      t.integer :teacher_id
      t.string :grade

      t.timestamps
    end
  end
end
