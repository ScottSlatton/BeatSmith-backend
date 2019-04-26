class Api::V1::MatchesController < ApplicationController
        def index
        @Matches = Match.all
        render json: @Matches
    end
end
