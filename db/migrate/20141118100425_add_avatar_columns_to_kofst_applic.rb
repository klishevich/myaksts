class AddAvatarColumnsToKofstApplic < ActiveRecord::Migration
  def self.up
    add_attachment :kofst_applics, :avatar
  end

  def self.down
    remove_attachment :kofst_applics, :avatar
  end
end
