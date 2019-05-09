class Api::V1::BossesController < ApplicationController
    before_action :find_boss, only:[:show]
    def index
        @Bosses = Boss.all
        render json: @Bosses
    end

    def show
        render json: @Boss
    end

 def create
    @Boss = Boss.create(boss_params)
    if @Boss.save
      render json: { user: BossSerializer.new(@Boss)}, status: :created
    else
      render json: { error: 'Failed to Create Boss' }, status: :not_acceptable
    end
  end

    def boss_params
        params.require(:boss).permit(:name, :damage, :level, :experience, :health, :armor, :damage)
    end

    def find_boss
    @Boss = Boss.find(params[:id])
  end
end
