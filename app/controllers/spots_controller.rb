class SpotsController < ApplicationController

  def index
  end

  def new
    @spot = Spot.new
    @spot.user = current_user
    @user = @spot.user
  end

  def create
    new_params = spot_params
    new_params[:image] = spot_params[:photo]
    @spot = Spot.new(new_params)
    @spot.user = current_user
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new
    end
  end

  def show
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/"
    @spot = Spot.find(params[:id])
    @booking = Booking.new
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
  end

  private

  def spot_params
    params.require(:spot).permit(:description, :price, :guest_number, :image, :occupation, :good)
  end
end
