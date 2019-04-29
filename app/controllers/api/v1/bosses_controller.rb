class Api::V1::BossesController < ApplicationController
    skip_before_action :authorized
        def index
        @Bosses = Boss.all
        render json: @Bosses
    end
end
