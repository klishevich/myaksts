class AddAriasOfInterestToKofstApplics < ActiveRecord::Migration
  def change
    add_column :kofst_applics, :i_joint_research, :boolean
    add_column :kofst_applics, :i_research_and_consulting, :boolean
    add_column :kofst_applics, :i_job, :boolean
    add_column :kofst_applics, :i_starting_a_business, :boolean 
    add_column :kofst_applics, :i_lecture, :boolean 
    add_column :kofst_applics, :i_internation_conference, :boolean                     	
    add_column :kofst_applics, :i_seminar, :boolean                     	
    add_column :kofst_applics, :i_information_interaction, :boolean                     	
    add_column :kofst_applics, :i_others, :boolean            	
  end
end
