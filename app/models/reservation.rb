class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

  validates :check_in, presence: true
  validates :check_out, presence: true
  validate  :guest_is_not_host

  def duration
    (self.check_out - self.check_in).to_i
  end

  def total_price
    #binding.pry
    (self.listing.price).to_i * duration
  end
  def guest_is_not_host
    errors.add(:guest, "Can't be both guest and host") if guest_id == self.listing.host_id
  end
end
