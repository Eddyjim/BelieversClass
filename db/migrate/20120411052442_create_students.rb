class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :id
      t.string :name
      t.integer :phone
      t.string :email
      t.date :birthdate
      t.integer :class_id

      t.timestamps
    end
  end
end
