class  Api::V1::DrinksController < ApplicationController
   
    def index
        render json: Drink.all, status: 201
    end
end
