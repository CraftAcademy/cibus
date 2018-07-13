class DishesController < ApplicationController
  def show
  end

  def create
    binding.pry
    redirect_to order_items_path, notice: 'Dish is added to the cart!'
  end
  
end
