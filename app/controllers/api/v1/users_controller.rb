class Api::V1::UsersController < ApplicationController
    before_action :find_user, only:[:show]
    def index
        @Users = User.all
        render json: @Users
    end

    def show
        render json: @User
    end

    private
     def find_user
      @User = User.find(params[:id])
     end
end
