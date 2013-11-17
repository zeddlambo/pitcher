class AddUserIdToAdvertisers < ActiveRecord::Migration
  def change
    add_column :advertisers, :user_id, :integer
    add_index :advertisers, :user_id
  end
end
