class Pastor < ActiveRecord::Base
  has_secure_password
  has_many :shifts
  has_many :patrols, :through => :shifts
  
  attr_accessible :email, :password, :password_confirmation
  
  validates_uniqueness_of :email
end
