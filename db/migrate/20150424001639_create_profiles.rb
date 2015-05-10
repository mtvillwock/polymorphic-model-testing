class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :description
      t.integer :profileable_id
      t.string :profileable_type

      t.timestamps null: false
    end
    add_index :profiles, [:profileable_id, :profileable_type]
  end
end
