class AddBirthYearToAntokMembers < ActiveRecord::Migration
  def change
    add_column :antok_members, :birth_year, :integer
  end
end
