class Shift < ActiveRecord::Base
  belongs_to :pastor
  belongs_to :patrol
  validates :pastor_id, :presence => true, :uniqueness => {:scope => :patrol_id}
end