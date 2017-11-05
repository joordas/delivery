class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @selected_dish = SelectedDish.new
  end
end
