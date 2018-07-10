class MenusController < ApplicationController
  def index
    @dishes = Dish.all
  end
end
