class AddWorkCityToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :work_city, :string
  end
end
