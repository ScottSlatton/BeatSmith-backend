class Api::V1::FriendsController < ApplicationController
        def index
        @Friends = Friend.all
        render json: @Friends
    end
end
