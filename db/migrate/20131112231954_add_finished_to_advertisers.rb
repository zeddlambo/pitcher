class AddFinishedToAdvertisers < ActiveRecord::Migration
  def change
    add_column :advertisers, :advertiser, :string
  end
end
