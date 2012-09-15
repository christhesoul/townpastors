class Pastor < ActiveRecord::Base
  has_secure_password
  has_many_and_belongs_to :patrols
  
  attr_accessible :email, :password, :password_confirmation
  
  validates_uniqueness_of :email
end
