class Api::V1::MonstersController < ApplicationController
    before_action :find_monster, only:[:show]
    def index
        @Monsters = Monster.all
        render json: @Monsters
    end

    def show
        render json: @Monster
    end

 def create
    @Monster = Monster.create(monster_params)
    if @Monster.save
      render json: { user: MonsterSerializer.new(@Monster)}, status: :created
    else
      render json: { error: 'Failed to Create Monster' }, status: :not_acceptable
    end
  end

    def monster_params
        params.require(:monster).permit(:name, :damage, :level, :experience, :health, :armor, :damage)
    end

    def find_monster
    @Monster = Monster.find(params[:id])
  end
end
