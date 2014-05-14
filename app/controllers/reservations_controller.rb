class ReservationsController < ApplicationController
  # before_filter :authenticate_user!
  def new
    @seats = Seat.all
  end

  def show
    @reservations = Reservation.where(number: params[:id])
    if @reservations.count == 0
      redirect_to edit_seat_path
    end
  end

  def create
    @reservations = Reservation.where(ip: @ip)
    @reservations.each do |reservation|
      reservation.number = @reservations.first.id
      reservation.confirm_reservation
    end
    redirect_to reservation_path(:id => @reservations.first.number)
  end

  def destroy
    reservation = Reservation.find(params[:id])
    # @reservations.each do |reservation|
      reservation.seat.reserved = false
      reservation.seat.prereserved = false
      reservation.seat.save
      reservation.destroy
    # end
    redirect_to reservation_path(id: reservation.number)
  end

  private
  def reservation_params
    params.require(:reservation).permit(:seat_id, :user_id, :ip)
  end
end
