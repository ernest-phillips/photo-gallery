class UsersController < ApplicationController
  before_action :authenticate_user
  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "User deleted"}
  end
end
