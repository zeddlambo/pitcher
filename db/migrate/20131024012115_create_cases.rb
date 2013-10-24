class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.string :security
      t.integer :cid
      t.string :issue
      t.integer :points

      t.timestamps
    end
  end
end
