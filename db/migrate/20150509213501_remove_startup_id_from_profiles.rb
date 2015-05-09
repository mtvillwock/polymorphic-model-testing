class RemoveStartupIdFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :startup_id, :integer
  end
end
