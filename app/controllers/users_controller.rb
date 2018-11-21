class UsersController < ApplicationController

  def edit
    @user = current_user
  end

  def profile
    @user = current_user
    @spot = Spot.where("user_id=?", current_user.id)
    if @spot != []
      @booking = find_booking_from_owner(@spot)
    else
      @booking = Booking.where("user_id=?", current_user.id)
      @spot = @booking.spot_id
    end
  end


  def find_booking_from_owner
    @booking = Booking.where("spot_id=?", @spot.id)
  end

  def update
    current_user.name = user_params[:name]
    current_user.avatar = user_params[:photo]
    if current_user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/"
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end
end
