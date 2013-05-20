class MeController < ApplicationController
  before_filter :except => :show do
    redirect_to home_path unless logged_in?
  end

  def update
    if Me.instance.update_attributes(me_params)
      redirect_to :action => :show
    else
      if me_params.include?(:about)
        render :edit
      else
        render :change_password
      end
    end
  end

  private

  def me_params
    params.require(:me).permit(:about, :password, :password_confirmation)
  end

end
