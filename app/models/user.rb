class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :is_antok_member, :antok_id,
    :is_foreign

  validates :name, presence: true

  has_one :applic, dependent: :destroy  

  has_one :kofst_applic, dependent: :destroy 

  validate :antok_id_should_be_correct

  before_save :update_foreign_params

  def antok_id_should_be_correct
    if is_antok_member
      if antok_id.blank?
        errors.add(:antok_id, :blank)
      else
        member = AntokMember.where(antok_id: antok_id).first
        if member.nil?
          Rails.logger.info("!!!! nil")
          errors.add(:antok_id, :antok_id_not_found) 
        end     
      end
    end
  end

  private

    def update_foreign_params
      if self.is_foreign
        self.is_antok_member = true
        self.antok_id = 'F'
      end
    end
  
end
