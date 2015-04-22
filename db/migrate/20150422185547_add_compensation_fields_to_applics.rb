class AddCompensationFieldsToApplics < ActiveRecord::Migration
  def change
  	add_column :applics, :need_compensation, :boolean
    add_column :applics, :inn, :string
    add_column :applics, :snils, :string
    add_column :applics, :registration, :text
  end
end
