class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|

      t.column "name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limt => 40

      t.timestamps              # to samo co nizej
      # t.datetime "created_at"
      # t.datetime "updated_at"

      # ekwiwalent do tego co wyzej po : typ danych, moze byc binary boolean
      # date datetime decimal float integer string text time
      #w 23 filmiku essentials 5 są jeszcze opcje
    end
  end

  def down
    drop_table :users

  end
end
