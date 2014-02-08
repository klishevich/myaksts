class AddIsAntokMemberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_antok_member, :boolean
  end
end
