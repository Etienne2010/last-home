class BookingsController < ApplicationController

  def index
    @user = current_user
    @bookings = Booking.where("user_id=?", @user.id)
  end

  def create
    @spot = booking_params[:spot]
    bkg = Booking.new(user: current_user, spot: @spot)
    if bkg.save
      redirect_to spot_booking_path(bkg)
    else
      redirect_to spot_path(@spot)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:spot)
  end
end
