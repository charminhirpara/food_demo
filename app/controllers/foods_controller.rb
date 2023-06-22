class FoodsController < ApplicationController
  before_action :set_food, only: %i[ show edit update destroy ]

    def index
        @foods = Food.all 
    end
end
