class DishesController < ApplicationController
    def index
        @dish = Dish.all
    end
end
