class CreateScienceFields < ActiveRecord::Migration
  def change
    create_table :science_fields do |t|
      t.string :name

      t.timestamps
    end
  end
end
