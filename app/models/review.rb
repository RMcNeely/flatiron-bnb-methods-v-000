class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"

  validates :description, presence: true
  validates :rating,  presence: true
  validates :reservation, presence: true
  validates_associated  :reservation  
end
