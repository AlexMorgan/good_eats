class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render action: 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_review, :body)
  end
end
