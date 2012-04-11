class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :id
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :class_id

      t.timestamps
    end
  end
end
