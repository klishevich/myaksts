class AddAntokIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :antok_id, :string
    add_index :users, [:antok_id]     
  end
end
