class Patrol < ActiveRecord::Base
  validates_uniqueness_of :patrol
  has_many :shifts
  has_many :pastors, :through => :shifts
end