class CreateKofstApplics < ActiveRecord::Migration
  def change
    create_table :kofst_applics do |t|
      t.integer :user_id
      t.string :applic_language
      t.string :korean_name
      t.string :english_name
      t.string :gender
      t.date :birth_date
      t.string :job_type
      t.string :job_organization
      t.string :job_department
      t.string :job_position
      t.string :job_email
      t.string :job_phone

      t.integer :science_field_id
      t.integer :science_specific_field_id
    
      t.string :mobile
      t.string :address
      t.string :country
      t.string :kofst_association
      t.string :nationality
      t.string :final_academic_degree

      t.string :e_period1
      t.string :e_period2
      t.string :e_period3
      t.string :e_period4
      t.string :e_period5
      t.string :e_degree1
      t.string :e_degree2
      t.string :e_degree3
      t.string :e_degree4
      t.string :e_degree5
      t.string :e_university1
      t.string :e_university2
      t.string :e_university3
      t.string :e_university4
      t.string :e_university5
      t.string :e_major1
      t.string :e_major2
      t.string :e_major3
      t.string :e_major4
      t.string :e_major5

      t.string :p_period1
      t.string :p_period2
      t.string :p_period3
      t.string :p_period4
      t.string :p_period5
      t.string :p_organization1	
      t.string :p_organization2
      t.string :p_organization3
      t.string :p_organization4
      t.string :p_organization5
      t.string :p_position1
      t.string :p_position2
      t.string :p_position3
      t.string :p_position4
      t.string :p_position5
      t.string :p_business_in_charge1
      t.string :p_business_in_charge2
      t.string :p_business_in_charge3
      t.string :p_business_in_charge4
      t.string :p_business_in_charge5

      t.text :a_publications
      t.text :a_awards
      t.text :a_patents
      t.text :a_research_activites

      t.text :area_of_interest

      t.boolean :i_joint_research
      t.boolean :i_research_and_consulting
      t.boolean :i_job
      t.boolean :i_starting_a_business
      t.boolean :i_lecture
      t.boolean :i_internation_conference
      t.boolean :i_seminar
      t.boolean :i_information_interaction
      t.boolean :i_others       

      t.timestamps
    end
    add_index :kofst_applics, [:user_id]    
    add_index :kofst_applics, [:science_field_id]
    add_index :kofst_applics, [:science_specific_field_id]        
  end
end
