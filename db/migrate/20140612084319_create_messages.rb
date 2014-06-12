class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.string :send_type
      t.string :email4test

      t.timestamps
    end
  end
end
