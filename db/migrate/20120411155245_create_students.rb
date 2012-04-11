class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :id
      t.string :name
      t.string :lastname
      t.integer :cc
      t.integer :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end