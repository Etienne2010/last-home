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
    p new_params
    new_params[:image] = spot_params[:photo]
    p new_params[:image]
    @spot = Spot.new(new_params)
    p @spot
    @spot.user = current_user
    p @spot
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new
    end
  end

  def show
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads/"
    @spot = Spot.find(params[:id])
    @booking = Booking.new
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
  end

  private

  def spot_params
    params.require(:spot).permit(:description, :price, :guest_number, :image, :occupation, :good, :photo)
  end
end
