class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :id
      t.string :level
      t.integer :teacher_id

      t.timestamps
    end
  end
end
