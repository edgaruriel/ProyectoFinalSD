class ReservationsController < ApplicationController
  # before_filter :authenticate_user!
  #obtenemos todos los asientos de la base de datos y los mandamos a la vista
  def new
    @seats = Seat.all
  end

  #obtiene las reservaciones de un numero de reservacion
  def show
    @reservations = Reservation.where(number: params[:id])
    #si el numero de reservacion no contiene reservaciones lo redirige al seat chooser
    if @reservations.count == 0
      redirect_to edit_seat_path
    end
  end

  def create
    @reservations = Reservation.where(ip: @ip)
    @reservations.each do |reservation|
      reservation.number = @reservations.first.id #obtenemos el numero de reservacion
      reservation.confirm_reservation
    end
    redirect_to reservation_path(:id => @reservations.first.number)
  end

  #destruye el asiento de una reservacion
  def destroy
    reservation = Reservation.find(params[:id])
    # @reservations.each do |reservation|
      reservation.seat.reserved = false
      reservation.seat.prereserved = false
      reservation.seat.save
      reservation.destroy
    # end
    #Actualiza la vista para dejar de mostrar el asiento destruido
    redirect_to reservation_path(id: reservation.number)
  end

  private
  def reservation_params
    params.require(:reservation).permit(:seat_id, :user_id, :ip)
  end
end
