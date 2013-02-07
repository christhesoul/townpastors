class Pastor < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :patrols
  
  attr_accessible :email, :password, :password_confirmation
  
  validates_uniqueness_of :email
end
