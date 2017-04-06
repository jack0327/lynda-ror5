class ChangePages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :name, :string
    add_column :pages, :position, :integer

  end
end
