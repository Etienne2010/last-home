class ReviewsController < ApplicationController
    # POST /restaurants/:restaurant_id/reviews
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @new_review = Review.new

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js { }
      else
        format.html { render 'restaurants/show' }
        format.js { }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
