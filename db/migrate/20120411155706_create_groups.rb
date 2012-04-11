class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :id
      t.integer :teacher_id
      t.string :level

      t.timestamps
    end
  end
end
