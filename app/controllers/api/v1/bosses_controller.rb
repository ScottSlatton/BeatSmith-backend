class Api::V1::BossesController < ApplicationController
        def index
        @Bosses = Boss.all
        render json: @Bosses
    end
end
