class AddFinishedToAdvertisers < ActiveRecord::Migration
  def change
    add_column :advertisers, :finished, :string
  end
end
