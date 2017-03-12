class AddAcadPositionToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :acad_position, :string
  end
end
