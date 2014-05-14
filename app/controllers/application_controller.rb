class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_filter :set_ip
  
  def set_ip
    @ip = get_ip(request.remote_ip.to_s)
  end

  private
  def get_ip(ip)

    Reservation.all.each do |reservation|
      if reservation.ip == ip && (reservation.seat.reserved)
        ip = get_ip(add_number(ip))
      end
    end
    return ip
  end

  def add_number(ip_string)
    numbers = ip_string.split('.')
    last_number = numbers.pop
    numbers << (last_number.to_i + 1)
    return numbers.join('.')
  end

end
