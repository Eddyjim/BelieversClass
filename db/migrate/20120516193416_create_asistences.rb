class CreateAsistences < ActiveRecord::Migration
  def change
    create_table :asistences do |t|
      t.integer :id
      t.date :dateOfClass
      t.string :leson

      t.timestamps
    end
  end
end
