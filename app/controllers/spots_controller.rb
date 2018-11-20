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
      redirect_to spots_path(@spot)
    else
      render :new
    end
  end

  def show
  end

  private

  def spot_params
    params.require(:spot).permit(:description, :price, :guest_number, :image, :occupation, :good)
  end
end
