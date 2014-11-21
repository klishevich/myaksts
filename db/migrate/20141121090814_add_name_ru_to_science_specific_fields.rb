class AddNameRuToScienceSpecificFields < ActiveRecord::Migration
  def change
    add_column :science_specific_fields, :name_ru, :string
  end
end
