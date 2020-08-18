class AddBirthYearToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :birth_year, :integer
  end
end
