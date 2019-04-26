class Api::V1::TeamsController < ApplicationController
    before_action :find_team, only:[:show]
    def index
        @Teams = Team.all
        render json: @Teams
    end

    def show
        render json: @Team
    end

    private
     def find_team
      @Team = Team.find(params[:id])
     end
end
