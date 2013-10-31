class CalltimeToCreateadvertisers < ActiveRecord::Migration
  def change
  	add_column :advertisers, :calltime, :integer
  	add_index :advertisers, :calltime
  end
end
