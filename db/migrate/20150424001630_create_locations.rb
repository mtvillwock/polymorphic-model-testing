class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.integer :locationable_id
      t.string :locationable_type

      t.timestamps null: false
    end
    add_index :locations, [:locationable_id, :locationable_type]
  end
end
