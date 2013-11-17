class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :note
      t.string :tag

      t.timestamps
    end
  end
end
