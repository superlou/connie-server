class ReservationsController < ApplicationController
  def update
    reservation = Reservation.find(params[:id])
    reservation.update(reservation_params)
    render json: reservation
  end

  def reservation_params
    params.require(:reservation).permit(:event_id, :reservable_id, :reservable_type)
  end
end
