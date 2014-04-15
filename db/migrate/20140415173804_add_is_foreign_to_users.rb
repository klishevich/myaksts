class AddIsForeignToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_foreign, :boolean
  end
end
