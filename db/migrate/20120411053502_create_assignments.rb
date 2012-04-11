class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :id
      t.string :description
      t.integer :classroom_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
