class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.limit(10)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path, notice: "#{@restaurant.name} has been added to list"
    else
      render action: 'new'
    end
  end
  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zipcode, :description, :category)
  end
end
