class AddNeedHotelToApplics < ActiveRecord::Migration
  def change
    add_column :applics, :need_hotel, :string
  end
end
