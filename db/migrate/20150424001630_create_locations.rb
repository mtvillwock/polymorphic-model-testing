class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :user_id
      t.integer :startup_id
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
