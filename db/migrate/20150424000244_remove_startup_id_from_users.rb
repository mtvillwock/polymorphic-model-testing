class RemoveStartupIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :startup_id, :integer
  end
end
