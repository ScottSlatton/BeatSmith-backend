class Api::V1::BossesController < ApplicationController
    before_action :find_user, only:[:show]
    def index
        @Bosses = Boss.all
        render json: @Bosses
    end

    def show
        render json: @Boss
    end



    def boss_params
        params.require(:boss).permit(:name, :damage, :level, :experience, :health, :armor, :damage)
    end

    def find_user
    @Boss = Boss.find(params[:id])
  end
end
