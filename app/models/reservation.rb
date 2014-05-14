class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :seat

  def confirm_reservation
    self.seat.update_attribute(:prereserved, false)
    self.seat.update_attribute(:reserved, true)
    save
  end
end
