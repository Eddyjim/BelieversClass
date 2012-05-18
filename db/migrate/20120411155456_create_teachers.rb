class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :uname
      t.integer :id
      t.string :name
      t.string :lastname
      t.integer :phone
      t.string :email
      t.integer :group_id
      t.string :password

      t.timestamps
    end
  end
end
