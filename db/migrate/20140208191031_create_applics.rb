class CreateApplics < ActiveRecord::Migration
  def change
    create_table :applics do |t|
      t.integer :user_id
      t.string :fio # обязательное для заявки на конференцию
      t.string :fio_eng # обязательное для заявки на конференцию
      t.date :birth_date
      t.string :sex
      t.text :post_address
      t.string :email  # обязательное для заявки на конференцию
      t.string :phones # обязательное для заявки на конференцию

      t.string :edu_institute
      t.text :edu_institute_address
      t.string :edu_specialization
      t.string :uch_stepen # обязательное для заявки на конференцию

      t.string :work_company # обязательное для заявки на конференцию
      t.integer :work_start_year
      t.string :work_department
      t.string :work_position # обязательное для заявки на конференцию
      t.string :work_specialization

      t.text :public_organizations

      t.string :antok_city # обязательное для заявки на конференцию

      # все нижеперечисленные обязательны для заявки на конференцию
      t.text :science_interests
      t.text :conf_topic
      t.string :conf_section
      t.text :conf_coauthors
      t.string :participation_type

      t.timestamps
    end
    add_index :applics, [:user_id]
  end
end
