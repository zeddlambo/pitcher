class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.string :name
      t.string :security
      t.integer :cid
      t.string :issue
      t.integer :points
      t.string :finished
      t.timestamps
    end
  end
end
