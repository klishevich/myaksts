class CreateApplicFiles < ActiveRecord::Migration
  def change
    create_table :applic_files do |t|
      t.integer :applic_id
      t.timestamps
    end
    add_index :applic_files, [:applic_id]
  end
end
