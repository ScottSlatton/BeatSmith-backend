class Api::V1::UsersController < ApplicationController
    before_action :find_user, only:[:show]
    before_action :user_params
    
    def index
        @Users = User.all
        render json: @Users
    end

    def update
      @user.update(user_params)
    end
    
    def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user)}, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

    def show
        render json: @User
    end

private

     def find_user
      @User = User.find(params[:id])
     end

    def user_params
    params.require(:user).permit(:username, :password, :score, :experience)
  end
end
