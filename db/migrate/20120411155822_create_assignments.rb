class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :id
      t.integer :group_id
      t.date :duedate
      t.string :description

      t.timestamps
    end
  end
end
