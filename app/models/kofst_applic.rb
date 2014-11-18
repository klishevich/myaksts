class KofstApplic < ActiveRecord::Base
  attr_accessible  :applic_language, :korean_name, :english_name, :gender, :birth_date,
  :job_type, :job_organization, :job_department, :job_position, :job_email, :job_phone,
  :science_field_id, :science_specific_field_id,
  :mobile, :address, :country, :kofst_association, :nationality, :final_academic_degree,
  :e_period1, :e_period2, :e_period3, :e_period4, :e_period5,
  :e_degree1, :e_degree2, :e_degree3, :e_degree4, :e_degree5, 
  :e_university1, :e_university2, :e_university3, :e_university4, :e_university5, 
  :e_major1, :e_major2, :e_major3, :e_major4, :e_major5,
  :p_period1, :p_period2, :p_period3, :p_period4, :p_period5, 
  :p_organization1, :p_organization2, :p_organization3, :p_organization4, :p_organization5,
  :p_position1, :p_position2, :p_position3, :p_position4, :p_position5, 
  :p_business_in_charge1, :p_business_in_charge2, :p_business_in_charge3, :p_business_in_charge4, :p_business_in_charge5,
  :a_publications, :a_awards, :a_patents, :a_research_activites, :area_of_interest,
  :i_joint_research, :i_research_and_consulting, :i_job, :i_starting_a_business,
  :i_lecture, :i_internation_conference, :i_seminar, :i_information_interaction,
  :i_others,
  :avatar

  has_attached_file :avatar, :styles => { :medium => "600x600>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  # attr_accessible :user_id
  belongs_to :user  
  belongs_to :science_specific_field
  belongs_to :science_field

  validates :user_id, presence: true
  validates :avatar, presence: true
  validates :gender, presence: true  
  validates :birth_date, presence: true
  validates :job_type, presence: true
  validates :job_organization, presence: true
  validates :job_department, presence: true
  validates :job_position, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :job_email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :job_phone, presence: true
  validates :science_field_id, presence: true
  validates :science_specific_field_id, presence: true
  validates :mobile, presence: true
  validates :address, presence: true
  validates :country, presence: true
  validates :kofst_association, presence: true
  validates :nationality, presence: true
  validates :final_academic_degree, presence: true
  validates :e_period1, presence: true
  validates :e_degree1, presence: true
  validates :e_university1, presence: true
  validates :e_major1, presence: true
  validates :p_period1, presence: true
  validates :p_organization1, presence: true
  validates :p_position1, presence: true
  validates :p_business_in_charge1, presence: true
  validates :a_publications, presence: true
  validates :a_awards, presence: true
  validates :a_patents, presence: true
  validates :a_research_activites, presence: true
  validate :science_specific_field_ok

  def science_specific_field_ok
    if self.science_specific_field.science_field_id != self.science_field.id
      errors.add(:science_specific_field_id, :science_specific_field_not_ok)
    end
  end  

end
