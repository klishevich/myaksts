class Applic < ActiveRecord::Base
  attr_accessible  :fio, :fio_eng, :birth_date, :sex, :post_address, :email, :phones, :edu_institute,
      :edu_institute_address, :edu_specialization, :uch_stepen, :work_company, :work_start_year,
      :work_department, :work_position, :work_specialization, :public_organizations, :antok_city,
      :science_interests, :conf_topic, :conf_section, :conf_coauthors, :participation_type  
  belongs_to :user
end
