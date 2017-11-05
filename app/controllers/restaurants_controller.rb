class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @cart = SelectedDish.where(user_id: 1)
    
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @dishes = @restaurant.dishes
  end
end
