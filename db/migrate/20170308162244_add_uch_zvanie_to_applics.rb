class AddUchZvanieToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :uch_zvanie, :string
  end
end
