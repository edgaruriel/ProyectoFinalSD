class Seat < ActiveRecord::Base
  belongs_to :user
  has_one :reservation
  before_save :create_reservation

  def create_reservation
  end

  def is_available?
    if prereserved || reserved
      false
    else
      true
    end
  end

  def color(ip)
    if is_available?
      return 'success'# 'green'
    elsif prereserved
      if is_prereserved_by(ip)
        return 'black' # 'black'
      else
        return 'primary'# 'blue'
      end
    else # reserved
      return 'warning'# 'orange'
    end
  end

  def is_prereserved_by(user_ip)
    if self.reservation.nil?
      return false
    end
    if self.reservation.ip.to_s == user_ip.to_s
      true
    else
      false
    end
  end


  default_scope { order('row ASC') }
end
