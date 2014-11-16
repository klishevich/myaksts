class CreateScienceSpecificFields < ActiveRecord::Migration
  def change
    create_table :science_specific_fields do |t|
      t.references :science_field
      t.string :name

      t.timestamps
    end
    add_index :science_specific_fields, :science_field_id
  end
end
