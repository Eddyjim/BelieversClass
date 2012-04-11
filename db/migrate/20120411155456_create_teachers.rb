class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :id
      t.string :name
      t.string :lastname
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
