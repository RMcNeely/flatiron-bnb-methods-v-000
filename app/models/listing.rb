class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, :through => :reservations
  has_many :guests, :class_name => "User", :through => :reservations

end

  #validates :address, presence: true
  #validates :type, presence: true
  #validates :title, presence: true
  #validates :description, presence: true
  #validates :price, presence: true

  #before_validation :update_host
