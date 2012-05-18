class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.integer :id
      t.integer :assignment_id
      t.string :student_id
      t.string :file

      t.timestamps
    end
  end
end
