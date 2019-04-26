class Api::V1::UsersController < ApplicationController

    def index
        @Users = User.all
        render json: @Users
    end
end
