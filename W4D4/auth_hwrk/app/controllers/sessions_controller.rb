class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username], params[:user][:password]
    )

    if user.nil?
      flash.now[:errors] = ["Incorrect username and/ or password"]
      render :new
    else
      login_user!(user)
      redirect_to user_url
    end
  end

  def destroy
    logout_user!
    redirect_to new_session_url
  end
end