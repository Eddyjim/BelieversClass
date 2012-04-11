class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
