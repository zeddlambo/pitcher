  def change
    create_table :cases do |t|
      t.string :name
      t.string :security
      t.integer :cid
      t.string :issue
      t.integer :points
      t.integer :time_on_call

      t.timestamps
    end
  end
end
