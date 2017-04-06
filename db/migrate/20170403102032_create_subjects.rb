class CreateSubjects < ActiveRecord::Migration[5.0]
  def up
    create_table :subjects do |t|
      t.column "name", :string
      t.string "last_name"
      t.string "email"
      t.boolean "visible", :default => true

      t.timestamps
    end
  end
  def down
    drop_table :subjects

  end


end
