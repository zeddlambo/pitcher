class NotesToCreateadvertisers < ActiveRecord::Migration
  def change
  	add_column :advertisers, :notes, :string
  	add_index :advertisers, :notes
  end
end
