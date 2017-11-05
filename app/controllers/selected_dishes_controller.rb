class SelectedDishesController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @selected_dish = SelectedDish.create(user: current_user, dish: Dish.find(params[:dish_id]))
    if @selected_dish
      redirect_to @restaurant
    end
  end
end
