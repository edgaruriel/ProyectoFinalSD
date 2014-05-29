class SeatsController < ApplicationController

  def index
    @seats = Seat.all
  end

  def edit
    @seats = Seat.all
    sum_time(3)
  end

  def update
    # debugger
    set_ip_object

    @seat = Seat.find(params[:id])
    @seats = Seat.all
    if @seat.prereserved
      seat_prereserved =  '1'
    else
      seat_prereserved =  '0'
    end
    valid = true

    if(Reservation.where(ip: @ip).count.to_i >= 5) && params[:seat][:prereserved] != '0'
      valid = false
      respond_to do |format|
        format.js { render 'too_many' }
        # redirect_to edit_seat_path(@seat)
      end
    end
    if params[:seat][:prereserved] == '2' || seat_prereserved == params[:seat][:prereserved]
      valid = false
      # el 2 es cuando ya estaba prereservado el asiento.
      respond_to do |format|
        format.js { render 'late_message' }
        # redirect_to edit_seat_path(@seat)
      end

    elsif valid && @seat.update(seat_params)
      if !@seat.reserved && @seat.prereserved
        reservation = Reservation.create(:seat_id => @seat.id, :ip => @ip)
      elsif !Reservation.find_by_seat_id(@seat.id).nil?
        Reservation.find_by_seat_id(@seat.id).destroy
      end
      respond_to do |format|
        format.js { render 'update' }
        format.html { redirect_to edit_seat_path(@seat) }
      end
    end

    # private
    # def assign
    #   @ip
    #
    # end
  end

private
  def seat_params
    params.require(:seat).permit(:user_id, :reserved, :prereserved, :number, :row)
  end

  def sum_time(time)
    @ip_object = Ip.find_by_ip(@ip)
    if @ip_object.nil?
      Ip.create(ip: @ip, time: 0)
      @ip_object = Ip.find_by_ip(@ip)
    end
    # debugger
    @ip_object.update_attribute(:time, @ip_object.time + time)
    if @ip_object.time >= 60
      Reservation.where(ip: @ip).each do |reservation|
        reservation.seat.reserved = false
        reservation.seat.prereserved = false
        reservation.seat.save
        reservation.destroy
      end
      @ip_object.update_attribute(:time, 0)
    end

  end

  def set_ip_object
    @ip_object = Ip.find_by_ip(@ip)

  end
end
