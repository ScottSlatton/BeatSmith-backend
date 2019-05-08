class Api::V1::BossesController < ApplicationController
    def index
        @Bosses = Boss.all
        render json: @Bosses
    end



    def boss_params
        params.require(:boss).permit(:name, :damage, :level, :experience, :health, :armor, :damage)
    end
end
