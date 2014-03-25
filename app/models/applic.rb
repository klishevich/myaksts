class Applic < ActiveRecord::Base
  attr_accessible  :fio, :fio_eng, :birth_date, :sex, :post_address, :email, :phones, :edu_institute,
      :edu_institute_address, :edu_specialization, :uch_stepen, :work_company, :work_start_year,
      :work_department, :work_position, :work_specialization, :public_organizations, :antok_city,
      :science_interests, :conf_topic, :conf_section, :conf_coauthors, :participation_type  
  belongs_to :user

  validates :user_id, presence: true
  validates :fio, presence: true, length: {minimum: 5}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}  
  validates :phones, presence: true, length: {minimum: 10}
  validates :uch_stepen, presence: true, length: {minimum: 5}
  validates :work_company, presence: true, length: {minimum: 5}
  validates :work_position, presence: true, length: {minimum: 5}
  validates :antok_city, presence: true
  validates :science_interests, presence: true, length: {minimum: 5}
  validates :conf_topic, presence: true, length: {minimum: 10}
  validates :conf_section, presence: true
  validates :participation_type, presence: true

  validate :fio_eng_cannot_be_blank, :birth_date_cannot_be_blank, :birth_date_should_be_1920_2000, 
      :sex_cannot_be_blank, :post_address_cannot_be_blank,
  		:edu_institute_cannot_be_blank, :edu_institute_address_cannot_be_blank, :edu_specialization_cannot_be_blank,
  		:work_start_year_cannot_be_blank, :work_department_cannot_be_blank, :work_specialization_cannot_be_blank,
  		:public_organizations_cannot_be_blank

  # Delivers to subscribers via email
  def deliver
    ApplicMailer.new_applic_notification(self).deliver
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |applic|
        csv << applic.attributes.values_at(*column_names)
      end
    end
  end  

  def fio_eng_cannot_be_blank
    if !self.user.is_antok_member? && fio_eng.blank?
      errors.add(:fio_eng, :blank)
    end
  end

  def birth_date_cannot_be_blank
    if !self.user.is_antok_member? && birth_date.blank?
      errors.add(:birth_date, :blank)
    end
  end

  def birth_date_should_be_1920_2000
    if !self.user.is_antok_member? && !birth_date.blank? && 
      ((birth_date < Date.strptime("{ 1920, 1, 1 }", "{ %Y, %m, %d }")) ||
      (birth_date > Date.strptime("{ 2000, 1, 1 }", "{ %Y, %m, %d }")))
      errors.add(:birth_date, :should_be_1920_2000)
    end
  end
  
  def sex_cannot_be_blank
    if !self.user.is_antok_member? && sex.blank?
      errors.add(:sex, :blank)
    end
  end

  def post_address_cannot_be_blank
    if !self.user.is_antok_member? && post_address.blank?
      errors.add(:post_address, :blank)
    end
  end

  def edu_institute_cannot_be_blank
    if !self.user.is_antok_member? && edu_institute.blank?
      errors.add(:edu_institute, :blank)
    end
  end

  def edu_institute_address_cannot_be_blank
    if !self.user.is_antok_member? && edu_institute_address.blank?
      errors.add(:edu_institute_address, :blank)
    end
  end

  def edu_specialization_cannot_be_blank
    if !self.user.is_antok_member? && edu_specialization.blank?
      errors.add(:edu_specialization, :blank)
    end
  end  

  def work_start_year_cannot_be_blank
    if !self.user.is_antok_member? && work_start_year.blank?
      errors.add(:work_start_year, :blank)
    end
  end 

  def work_department_cannot_be_blank
    if !self.user.is_antok_member? && work_department.blank?
      errors.add(:work_department, :blank)
    end
  end 

  def work_specialization_cannot_be_blank
    if !self.user.is_antok_member? && work_specialization.blank?
      errors.add(:work_specialization, :blank)
    end
  end 

  def public_organizations_cannot_be_blank
    if !self.user.is_antok_member? && public_organizations.blank?
      errors.add(:public_organizations, :blank)
    end
  end         

end
