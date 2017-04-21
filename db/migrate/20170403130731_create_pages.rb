class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.timestamps
      t.string :name
      t.integer :position
      t.string :description
      t.integer "subject_id", :default =>1
    end
  end
end
