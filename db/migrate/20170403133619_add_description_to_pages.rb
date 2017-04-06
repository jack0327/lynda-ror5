class AddDescriptionToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :description, :string
  end
end
