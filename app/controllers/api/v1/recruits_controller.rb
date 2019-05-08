class Api::V1::RecruitsController < ApplicationController
    def index
        @Recruits = Recruit.all
        render json: @Recruits
    end
end
