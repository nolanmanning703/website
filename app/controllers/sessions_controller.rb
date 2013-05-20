class SessionsController < ApplicationController

  def create
    if Me.instance.authenticate(sessions_params[:password])
      login!(:remember_me => sessions_params[:remember_me])
      redirect_to home_path, notice: "Logged in."
    else
      flash.now.alert = "Password is invalid."
      render "new"
    end
  end

  def destroy
    logout!
    redirect_to home_path, :notice => "Logged out."
  end

  private

  def sessions_params
    params.permit(:password, :remember_me)
  end

end
