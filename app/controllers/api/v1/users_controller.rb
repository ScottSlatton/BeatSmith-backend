class Api::V1::UsersController < ApplicationController
    before_action :find_user, only:[:show, :update]
    
    
  def index
    @Users = User.all
    render json: @Users
  end

  def update
    @User.update(user_params)
    render json: @User
  end
    
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @User = User.create(user_params)
    if @User.save
      render json: { user: UserSerializer.new(@User)}, status: :created
    else
      render json: { error: 'Failed to Create User' }, status: :not_acceptable
    end
  end

  def edit
    render json: @User, status: :accepted
  end

  def show
    render json: @User
  end

private

  def find_user
    @User = User.find(params[:id])

    if !@User 
      render json: { error: 'Failed to find user. Please Log In.' }, status: :not_acceptable
    end
    
  end

  def user_params
    params.require(:user).permit(:id, :username, :password, :score, :experience, :level, :friend_code, :highest_combo, :highest_score, :ore, :click_strength )
  end
end