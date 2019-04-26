class Api::V1::MatchesController < ApplicationController
   before_action :find_match, only:[:show]
    def index
        @Matches = Match.all
        render json: @Matches
    end

    def show
        render json: @Match
    end

    private
     def find_match
      @Match = Match.find(params[:id])
     end
end
