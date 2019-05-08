class SessionsController < ApplicationController
  before_action :create
  def create
    @User = User.all.find_by(username: user_params[:username])
    render json: @User
  end
  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end