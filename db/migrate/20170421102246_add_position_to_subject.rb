class AddPositionToSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :position, :integer, :default=>1
  end
end
