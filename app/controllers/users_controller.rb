class UsersController < ApplicationController

  def edit
    @user = current_user
  end

  def profile
    @user = current_user
    p @user
    p @user.avatar
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
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end
end
