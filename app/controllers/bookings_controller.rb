class BookingsController < ApplicationController

  def index

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
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads"
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to spot_bookings_path(@booking.spot_id)
  end

  private

  def booking_params
    params.require(:spot).permit(:user, :id)
  end
end
