class BookingsController < ApplicationController

  def index
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/"
    @user = current_user
    @bookings = Booking.where("user_id=?", @user.id)
  end

  def create
    @spot = Spot.find(params[:spot_id])
    bkg = Booking.new(user: current_user, spot: @spot)
    if bkg.save
      redirect_to spot_booking_path(@spot, bkg)
    else
      redirect_to spot_path(@spot)
    end
  end

  def show
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/"
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:spot).permit(:user, :id)
  end
end
