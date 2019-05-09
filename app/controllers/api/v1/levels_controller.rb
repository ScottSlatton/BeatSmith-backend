class Api::V1::LevelsController < ApplicationController
    before_action :find_level, only: [:show]
    def index
        @Levels = Level.all
        render json: @Levels
    end

    def show
        render json: @Level
    end
    def find_level
    @Level = Level.find(params[:id])
  end
end
