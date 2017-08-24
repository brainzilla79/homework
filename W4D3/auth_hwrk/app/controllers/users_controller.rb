class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      render user_url
    else
      render json: @users.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])

    if @user
      render :show
    else
      render json: @users.errors.full_messages, status: 422
    end
  end

  def new
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
