class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # Antes de ejecutar cualquier accion se asigna una ip a la sesion
  before_filter :set_ip

  # asigna la ip del usuario a su sesion
  def set_ip
    @ip = get_ip(request.remote_ip.to_s)
  end

  private

  #obtiene la ip de una sesion abierta
  def get_ip(ip)

    #Recorremos todas las reservaciones del usuario
    Reservation.all.each do |reservation|
      #Si la ip de la reservacion es igual a la ip solicitante y tiene un asiento reservado
      # entonces le asigna una ip
      if reservation.ip == ip && (reservation.seat.reserved)
        #se le asigna una nueva ip
        ip = get_ip(add_number(ip))
      end
    end
    return ip
  end

  #crea nueva ip aumentando en 1 su direccion
  def add_number(ip_string)
    numbers = ip_string.split('.')#guardamos en un arreglo los valores de la ip
    last_number = numbers.pop #obtenemos la ultima seccion de la ip y la sacamos del arreglo
    numbers << (last_number.to_i + 1) #le sumamos 1 y lo agregamos al arreglo
    return numbers.join('.') #retornamos la nueva ip
  end

end
