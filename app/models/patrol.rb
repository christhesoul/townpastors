class Patrol < ActiveRecord::Base
  has_many_and_belongs_to :pastors
end
