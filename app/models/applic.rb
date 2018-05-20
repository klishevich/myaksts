class Applic < ActiveRecord::Base
  attr_accessible  :fio, :fio_eng, :birth_date, :sex, :post_address, :email, :phones, :edu_institute,
      :edu_institute_address, :edu_specialization, :uch_stepen, :work_company, :work_company_short, :work_start_year,
      :work_department, :work_position, :work_specialization, :public_organizations, :antok_city,
      :science_interests, :conf_topic, :conf_section, :conf_coauthors, :participation_type,
      :need_compensation, :inn, :snils, :registration, :phone_work, :phone_home, :work_city, :uch_zvanie, :work_country
  belongs_to :user

  validates :user_id, presence: true
  validates :fio, presence: true, length: {minimum: 5}
  validates :fio_eng, presence: true, length: {minimum: 5}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}  
  validates :uch_zvanie, presence: true
  validates :uch_stepen, presence: true
  validates :work_company, presence: true, length: {minimum: 5}
  validates :work_company_short, presence: true, length: {minimum: 3}
  validates :work_city, presence: true
  validates :work_position, presence: true, length: {minimum: 5}
  # validates :antok_city, presence: true
  # validates :science_interests, presence: true, length: {minimum: 5}
  # validates :conf_topic, presence: true, length: {minimum: 5}
  # validates :conf_section, presence: true
  # validates :participation_type, presence: true

  # validates :inn, presence: true, length: {is: 12}, numericality: true, :if => :need_compensation?
  # validates :snils, presence: true, length: {is: 11}, numericality: true, :if => :need_compensation?
  # validates :registration, presence: true, length: {minimum: 10}, :if => :need_compensation?

  validates :phones, presence: true, length: {is: 10}, numericality: true

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

end
