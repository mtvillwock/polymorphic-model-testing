class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :startup_id
      t.string :description

      t.timestamps null: false
    end
  end
end
