class City < ActiveRecord::Base

  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  include Modules
# self.all.each {|c| @cities << Hash[c.name, c.listings.count]}

end
