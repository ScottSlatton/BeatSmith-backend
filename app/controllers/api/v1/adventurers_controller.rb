class AdventurersController < ApplicationController
    def index
        @Adventurers = Adventurer.all
        render json: @Adventurers
    end
end
