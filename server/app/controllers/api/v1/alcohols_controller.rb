class Api::V1::AlcoholsController < ApplicationController
    def index
        render json: Alcohol.all, status: 201
    end
end
