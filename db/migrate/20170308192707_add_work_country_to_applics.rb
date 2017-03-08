class AddWorkCountryToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :work_country, :string
  end
end
