class Pastor < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation
  validates_presence_of :password
  validates_uniqueness_of :email
  before_create { generate_token(:auth_token) }
  
  has_many :shifts
  has_many :patrols, :through => :shifts
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!(:validate => false)
    PastorMailer.password_reset(self).deliver
  end
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Pastor.exists?(column => self[column])
  end
end
