class AntokMember < ActiveRecord::Base
  attr_accessible :antok_id, :birth_date, :fio, :birth_year
  validates :antok_id, :birth_date, :fio, :birth_year, presence: true

  before_validation :set_birth_year

  private
  def set_birth_year
    self.birth_year = self.birth_date.year
  end
end
