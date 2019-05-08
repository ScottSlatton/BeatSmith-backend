class Api::V1::AdventurersController < ApplicationController
    def index
        @Adventurers = Adventurer.all
        render json: @Adventurers
    end
end
