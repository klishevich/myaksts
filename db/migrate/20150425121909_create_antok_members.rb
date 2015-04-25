class CreateAntokMembers < ActiveRecord::Migration
  def change
    create_table :antok_members do |t|
      t.string :antok_id
      t.string :fio
      t.date :birth_date

      t.timestamps
    end
  end
end
