class Dish < ApplicationRecord
    validates_presence_of :description, :price, :category
end
