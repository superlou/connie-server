class ReservationsController < ApplicationController
  def create
    reservation = Reservation.create!(reservation_params)
    render json: reservation
  end

  def update
    reservation = Reservation.find(params[:id])
    reservation.update(reservation_params)
    render json: reservation
  end

  def reservation_params
    params.require(:reservation).permit(:event_id, :reservable_id, :reservable_type)
  end
end
