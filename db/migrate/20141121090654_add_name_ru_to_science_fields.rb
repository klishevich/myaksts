class AddNameRuToScienceFields < ActiveRecord::Migration
  def change
    add_column :science_fields, :name_ru, :string
  end
end
