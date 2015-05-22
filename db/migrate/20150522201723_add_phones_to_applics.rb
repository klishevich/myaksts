class AddPhonesToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :phone_work, :string
    add_column :applics, :phone_home, :string
  end
end
