class AddScienceFieldToKofstApplics < ActiveRecord::Migration
  def change
    add_column :kofst_applics, :science_field_id, :integer
    add_column :kofst_applics, :science_specific_field_id, :integer
  end
end
