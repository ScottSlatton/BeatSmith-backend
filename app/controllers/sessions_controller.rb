class SessionsController < ApplicationController
  before_action :create
  def create
    @User = User.all.find_by(username: user_params[:username])

    if !@User 
      render json: { error: 'Failed to find user. Please Log In.' }, status: :not_acceptable
    else
      render json: @User
    end
  end
  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end